//
//  FavoriteListViewModelImpl.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//
import Foundation
import RxSwift
import RxCocoa
import XCoordinator
import Action
import RealmSwift

class FavoriteListViewModelImpl: FavoritesListViewModel, FavoritesListViewModelInput, FavoritesListViewModelOutput, FavoritesListViewModelStoredProperties {

    let disposeBag = DisposeBag()
    
    // MARK: -Inputs-
    
    private(set) lazy var selectedMovie = selectedMovieActions.inputs
    
    // MARK: -Actions-
    
    lazy var selectedMovieActions = Action<Movie, Void> { [unowned self] movie in
        self.router.rx.trigger(.movieDetail(omdbId: movie.imdbID!))
}
    
    // MARK: -Outputs-
    var favoritesList = PublishSubject<[Movie]>()
    
    // MARK: -Stored properties-
    
    private let router : UnownedRouter<MovieListRoute>
    
    
    // MARK: -Initialization-
    
    init(router: UnownedRouter<MovieListRoute> ) {
        self.router = router
       fetchFavoritesList()
    }
    
    func fetchFavoritesList (){
       
            DispatchQueue.main.async {
                let favoriList = RealmHelper.sharedInstance.fetchFavoriteList().map { $0 }
                var list:[Movie] = [Movie]()
                list.append(contentsOf: favoriList)
                self.favoritesList.onNext(list)
            }
    }
    
    func pop() {
        router.trigger(.pop)
    }

}
