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
    
    private let cellIdentifier = String(describing: FavoriteListCell.self)
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
      //  navigationController?.setNavigationBarHidden(true, animated: animated)
        let image = UIImage(named: "delete")
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: image , style: .plain, target: self, action: #selector(addTapped))
        navigationItem.rightBarButtonItem?.imageInsets = UIEdgeInsets(top: 4, left: 3, bottom: -4, right: -3)
        navigationController?.navigationBar.backgroundColor = UIColor(rgb: 0xF5F5F5)
        navigationController?.navigationBar.tintColor = .black
    }
    
    @objc func addTapped(){
        self.deleteButtonProcesses()
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
      //  navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func bindViewModel() {
        
        viewModel.output.favoritesList.bind(to: favoritesListView.favoritesListCollectionView.rx.items(cellIdentifier: cellIdentifier, cellType: FavoriteListCell.self)) { _, model , cell in
            
            let urlString = model.poster!.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
            cell.favoritesListCellImageView.kf.setImage(with: URL(string: urlString!))
            cell.favoritesListCellNameLabel.text = model.title
            cell.favoritesListCellYearLabel.text = model.year
            
            cell.favoritesListCellDeleteFavoriteButton.addTapGesture{
                AppSnackBar.make(in: self.view, message: "\(model.title!) favorilerden çıkarıldı ", duration: .custom(1.0)).show()
                RealmHelper.sharedInstance.deleteFromDb(movie: model)
                self.viewModel.fetchFavoritesList()           
        }
    }
        favoritesListView.favoritesListCollectionView.rx.modelSelected(Movie.self)
            .bind(to: viewModel.input.selectedMovie).disposed(by: disposeBag)
        
    
}
    func registerCollectionView() {
        favoritesListView.favoritesListCollectionView.delegate = self
        favoritesListView.favoritesListCollectionView.register(FavoriteListCell.self, forCellWithReuseIdentifier: "FavoriteListCell")
        favoritesListView.favoritesListCollectionView.collectionViewLayout = gridFlowLayout
    }
    

    
    func deleteButtonProcesses(){
        RealmHelper.sharedInstance.deleteAllFromDatabase()
        self.viewModel.fetchFavoritesList()
        let alertAction = UIAlertAction(title: "OK", style: .default) { UIAlertAction in
            self.viewModel.pop()
        }
        self.alertAction(title: "Success", message: "Clean Favorite List", action: alertAction)
    }
}
