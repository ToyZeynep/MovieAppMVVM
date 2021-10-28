//
//  MovieDetailsViewModel.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//

import Foundation
import Foundation
import RxSwift
import XCoordinator
import Action

protocol MovieDetailViewModelInput {
}

protocol MovieDetailViewModelOutput {
    var name: BehaviorSubject<String> { get }
    var summary : BehaviorSubject<String> { get }
    var imageUrl: BehaviorSubject<String> { get }
    var imdbRating : BehaviorSubject<String> { get }
}
protocol MovieDetailsViewModelStoredProperties {
    var movieDetailsUseCase : MovieDetailsUseCase { get }
    
}
protocol MovieDetailViewModel {
    var input: MovieDetailViewModelInput { get }
    var output: MovieDetailViewModelOutput { get }
}

extension MovieDetailViewModel where Self: MovieDetailViewModelInput & MovieDetailViewModelOutput &  MovieDetailsViewModelStoredProperties {
    var input: MovieDetailViewModelInput { return self }
    var output: MovieDetailViewModelOutput { return self }
}
