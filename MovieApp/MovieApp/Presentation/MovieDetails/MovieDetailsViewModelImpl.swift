//
//  MovieDetailsViewModelImpl.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//

import Foundation
import RxSwift
import RxCocoa
import XCoordinator
import Action

class MovieDetailViewModelImpl : MovieDetailViewModel, MovieDetailViewModelInput , MovieDetailViewModelOutput , MovieDetailsViewModelStoredProperties {
    

    let disposeBag = DisposeBag()
    
    // MARK: -Inputs-

    // MARK: -Actions
    
    // MARK: -Outputs-

    var name =  BehaviorSubject<String> (value: "")
    var summary = BehaviorSubject<String> (value: "")
    var imageUrl = BehaviorSubject<String> (value: "")
    var imdbRating = BehaviorSubject<String> (value: "")
    // MARK: -Stored properties-
    
    private let router: UnownedRouter<MovieListRoute>
    private let omdbId: String
    var movieDetailsUseCase = MovieDetailsUseCase()
    // MARK: -Initialization-
    
    init(router: UnownedRouter<MovieListRoute>, omdbId: String ){
        self.router = router
        self.omdbId = omdbId
        
        fetchMovieDetail()
    }
    
    func fetchMovieDetail()  {
        var params: [String: Any] = [String: Any]()
        params["i"] = omdbId
        movieDetailsUseCase.getMovieDetails(params: params).subscribe(onNext: {response in
            self.setMovieDetail(movieDetailsResponse: response)
        }).disposed(by: disposeBag)
    }
    
    func setMovieDetail(movieDetailsResponse: MovieDetailsResponse) {
        
        name.onNext(movieDetailsResponse.title!)
        summary.onNext(movieDetailsResponse.plot!)
        imageUrl.onNext(movieDetailsResponse.poster!)
        imdbRating.onNext(movieDetailsResponse.imdbRating!)
    }
    
}

