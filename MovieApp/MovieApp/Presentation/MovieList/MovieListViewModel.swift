//
//  MovieListVievModel.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//

import Foundation
import RxSwift
import XCoordinator
import Action

protocol MovieListViewModelInput {
    
    var selectedMovie: AnyObserver<Movie> { get }
}

protocol MovieListViewModelOutput {

    var movieListResponse: PublishSubject<MovieListResponse> { get }
    var movieList: PublishSubject<[Movie]> { get }
}

protocol MovieListViewModelStoredProperties {
    var movieListUseCase : MovieListUseCase { get }
    
}
protocol MovieListViewModel{
    var input: MovieListViewModelInput { get }
    var output: MovieListViewModelOutput { get }
    var storedProperties : MovieListViewModelStoredProperties { get }
    func fetchMovieList(searchText: String , page : Int)
    func navigateToFavorites()
}

extension MovieListViewModel where Self:  MovieListViewModelInput & MovieListViewModelOutput & MovieListViewModelStoredProperties {
    var input: MovieListViewModelInput { return self }
    var output: MovieListViewModelOutput { return self }
    var storedProperties : MovieListViewModelStoredProperties { return self  }
}
