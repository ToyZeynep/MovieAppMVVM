//
//  FavoriteListViewModel.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//
import Foundation
import RxSwift
import XCoordinator
import Action
import RealmSwift

protocol FavoritesListViewModelInput {
    
  var selectedMovie: AnyObserver<Movie> { get }
}
protocol  FavoritesListViewModelOutput {

    var favoritesList: PublishSubject<[Movie]> { get }
    
}
protocol  FavoritesListViewModelStoredProperties {
 
}

protocol  FavoritesListViewModel {
    var input: FavoritesListViewModelInput { get }
    var output: FavoritesListViewModelOutput { get }
    var storedProperties : FavoritesListViewModelStoredProperties { get }
    func fetchFavoritesList()
 
}

extension  FavoritesListViewModel where Self: FavoritesListViewModelInput & FavoritesListViewModelOutput & FavoritesListViewModelStoredProperties {
    var input: FavoritesListViewModelInput { return self }
    var output: FavoritesListViewModelOutput { return self }
    var storedProperties: FavoritesListViewModelStoredProperties { return self }
}
