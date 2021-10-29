//
//  MovieListCoordinator.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//
import Foundation
import UIKit
import RxSwift
import RxCocoa
import XCoordinator

enum MovieListRoute: Route {
    
    case movieList
    case movieDetail(omdbId : String)
    case favoriteList
    case pop
    
}

class MovieListCoordinator: NavigationCoordinator<MovieListRoute> {
    
    init() {
        super.init(initialRoute: .movieList)
    }
    
    override func prepareTransition(for route: MovieListRoute) -> NavigationTransition {
        switch route {
 
       case .movieList:
            let viewController = MovieListViewController()
            let viewModel = MovieListViewModelImpl(router: unownedRouter)
            viewController.bind(to: viewModel)
        return .push(viewController, animation: .default)
     
        case .movieDetail( let omdbId):
            let viewController = MovieDetailsViewController()
            let viewModel = MovieDetailViewModelImpl(router: unownedRouter, omdbId: omdbId)
            viewController.bind(to: viewModel)
            return .push(viewController, animation: .default)
              
        case .favoriteList:
            let viewController = FavoritesListViewController()
            let viewModel = FavoriteListViewModelImpl(router: unownedRouter)
            viewController.bind(to: viewModel)
            return .push(viewController, animation: .default)
            
        case .pop :
            return .pop(animation: .default)
        }
    }
}
