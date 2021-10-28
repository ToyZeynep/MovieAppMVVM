//
//  FavoriteListViewController.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//



import Foundation
import RxCocoa
import RxSwift
import RxGesture
import XCoordinator
import Kingfisher
import Action
import UIKit
import RealmSwift

class FavoritesListViewController : UIViewController, BindableType, UICollectionViewDelegate {
    
    private let cellIdentifier = String(describing: FavoritesListCell.self)
    let disposeBag = DisposeBag()
    var favoritesListView = FavoritesListView()
    var viewModel: FavoritesListViewModel!
    var gridFlowLayout = GridFlowLayout()
    var listFlowLayout = ListFlowLayout()
    var favoritesList = [Movie]()
    var isGrid = true
    
    override func loadView() {
        view = favoritesListView
    }
    override func viewDidLoad() {
        registerCollectionView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        favoritesListView.favoritesListCollectionView.reloadData()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func bindViewModel() {
        
        viewModel.output.favoritesList.bind(to: favoritesListView.favoritesListCollectionView.rx.items(cellIdentifier: cellIdentifier, cellType: FavoritesListCell.self)) { _, model , cell in
            
            let urlString = model.image!.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
            cell.favoritesListCellImageView.kf.setImage(with: URL(string: urlString!))
            cell.favoritesListCellNameLabel.text = model.name
            cell.favoritesListCellStatusLabel.text = model.status
            cell.favoritesListCellSpeciesLabel.text = model.species
            cell.favoritesListCellDeleteFavoriteButton.backgroundColor = .red
            
            cell.favoritesListCellDeleteFavoriteButton.addTapGesture {
                print("----tıkı tıkı----")
                RealmHelper.sharedInstance.deleteFromDb(characterDetails: model)
                self.viewModel.fetchFavoriteList()
            }
            
        }.disposed(by: disposeBag)
        
        favoritesListView.favoritesListCollectionView.rx.modelSelected(CharacterDetails.self)
            .bind(to: viewModel.input.selectedCharacter).disposed(by: disposeBag)
        
        favoritesListView.favoritesListDeleteButton.rx.tapGesture().when(.recognized).subscribe(onNext : { gesture in
            self.deleteButtonProcesses()
        }).disposed(by: disposeBag)
        
        favoritesListView.favoritesListGridButton.rx.tapGesture().when(.recognized).subscribe(onNext: { gesture in
            self.gridButtonProcesses()
            
        }).disposed(by: disposeBag)
        
        favoritesListView.favoritesListListButton.rx.tapGesture().when(.recognized).subscribe(onNext: { gesture in
            self.viewModel.dismiss()
        }).disposed(by: disposeBag)
    }

    func registerCollectionView() {
        favoritesListView.favoritesListCollectionView.delegate = self
        favoritesListView.favoritesListCollectionView.register(FavoritesListCell.self, forCellWithReuseIdentifier: "FavoritesListCell")
        favoritesListView.favoritesListCollectionView.collectionViewLayout = gridFlowLayout
    }
    
    func gridButtonProcesses(){
        self.favoritesListView.favoritesListCollectionView.collectionViewLayout = self.isGrid ? self.listFlowLayout : self.gridFlowLayout
        self.favoritesListView.favoritesListGridButton.setImage( self.isGrid ? UIImage(named: "grid.png")?.withRenderingMode(.alwaysTemplate) : UIImage(named: "list.png")?.withRenderingMode(.alwaysTemplate), for: .normal)
        self.isGrid = !self.isGrid
    }
    
    func deleteButtonProcesses(){
        RealmHelper.sharedInstance.deleteAllFromDatabase()
        self.viewModel.fetchFavoriteList()
    }
}
