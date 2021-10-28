//
//  MovieListViewController.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//

import Foundation
import UIKit
import RxCocoa
import RxSwift
import RxGesture
import XCoordinator
import Kingfisher
import Action


class MovieListViewController: UIViewController, BindableType, UICollectionViewDelegate {
    
    private let cellIdentifier = String(describing: MovieListCell.self)
    let disposeBag = DisposeBag()
    var movieListView = MovieListView()
    var viewModel: MovieListViewModel!
    var movieList = [Movie]()
    var nextPageNumber = 1
    var isLoading = false
    var listFlowLayOut = ListFlowLayout()
    var totalPageCount = Int()
    
    override func loadView() {
        view = movieListView
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
        movieListView.movieListCollectionView.reloadData()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func bindViewModel() {
        //ilk servis isteğini attık
        movieListView.movieListSearchButton.rx.tapGesture().when(.recognized).subscribe(onNext:{ [self] gesture in
            
            viewModel.fetchMovieList(searchText: movieListView.movieListSearchTextField.text! , page: 1)
            
        }).disposed(by: disposeBag)
        
        viewModel.output.movieList.bind(to: movieListView.movieListCollectionView.rx.items(cellIdentifier:cellIdentifier , cellType: MovieListCell.self)){[self] _, model, cell in
            let urlString = model.poster!.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
            cell.movieListCellImageView.kf.setImage(with: URL(string: urlString!))
            cell.movieListCellNameLabel.text = model.title
            cell.movieListCellYearLabel.text = model.year
            cell.movieListCellAddFavoriteButton.rx.tapGesture().when(.recognized).subscribe(onNext: { gesture in
                
                
            }).disposed(by: disposeBag)
            
        }.disposed(by: disposeBag)

        movieListView.movieListCollectionView.rx.modelSelected(Movie.self).bind(to: viewModel.input.selectedMovie).disposed(by: disposeBag)
     
    }
     
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
    }
 
    func registerCollectionView() {
        movieListView.movieListCollectionView.delegate = self
        movieListView.movieListCollectionView.register(MovieListCell.self, forCellWithReuseIdentifier: "MovieListCell")
        movieListView.movieListCollectionView.collectionViewLayout = listFlowLayOut
    }
}
