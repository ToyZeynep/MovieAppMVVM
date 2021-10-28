//
//  MovieListViewModelImpl.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//
import Foundation
import RxSwift
import RxCocoa
import XCoordinator
import Action

class MovieListViewModelImpl: MovieListViewModel, MovieListViewModelInput, MovieListViewModelOutput {
    
    
    
    
    let disposeBag = DisposeBag()
    
    // MARK: -Inputs-
    
    private(set) lazy var selectedMovie = selectedMovieActions.inputs
    
    // MARK: -Actions-
    lazy var selectedMovieActions = Action<Movie, Void> { [unowned self] movie in
        self.router.rx.trigger(.movieDetail(omdbId: movie.imdbID!))
    }
    
    // MARK: -Outputs-
    
    var movieListResponse = PublishSubject<MovieListResponse>()
    var lastPageNumber = PublishSubject<Int>()
    var movieList = PublishSubject<[Movie]>()
    var nextPage = PublishSubject<Int>()
    
    // MARK: -Stored properties-
    
    private let router: UnownedRouter<MovieListRoute>
    private let movieListUseCase: MovieListUseCase
    
    // MARK: -Initialization-
    
    init(router: UnownedRouter<MovieListRoute>, movieListUseCase: MovieListUseCase) {
        self.router = router
        self.movieListUseCase = movieListUseCase
    }
    
    
    
    
    func fetchMovieList(searchText: String , page: Int ) {
        var params: [String: Any] = [String: Any]()
        params["page"] = page
        params["s"] = searchText
        params["type"] = "movie"
        movieListUseCase.getMovieList(params: params).subscribe(onNext: { response in
            if response.movies != nil {
                self.movieListResponse.onNext(response)

            }
        }).disposed(by: disposeBag)
    }
    
}
