//
//  MovieDetailsCoordinator.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa
import XCoordinator

enum MovieDetailsRoute: Route {
    
    case movieDetail(omdbId : String)
    case favoriteList
}

class MovieDetailsCoordinator: NavigationCoordinator<MovieDetailsRoute> {
    
    init(rootViewController: UINavigationController , omdbId : String) {
        super.init(rootViewController: rootViewController , initialRoute: .movieDetail(omdbId : String))
    }
    
    override func prepareTransition(for route: MovieDetailsRoute) -> NavigationTransition {
        switch route {
 
        case .movieDetail(omdbId: String):
            let viewController = MovieDetailViewController()
            let viewModel = MovieDetailViewModelImpl(router: unownedRouter, omdbId : String)
            viewController.bind(to: viewModel)
        return .push(viewController, animation: .default)
            
        case .favoriteList:
            let coordinator = FavoritesListCoordinator(rootViewController: rootViewController)
            addChild(coordinator)
            return .none()
     
        }
    }
}
