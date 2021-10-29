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
}

class MovieDetailsCoordinator: NavigationCoordinator<MovieDetailsRoute> {
    
    init(rootViewController: UINavigationController , omdbId : String) {
        super.init(rootViewController: rootViewController , initialRoute: .movieDetail(omdbId : omdbId))
    }
    
    override func prepareTransition(for route: MovieDetailsRoute) -> NavigationTransition {
        switch route {
 
        case .movieDetail(let omdbId):
            let viewController = MovieDetailsViewController()
            let viewModel = MovieDetailViewModelImpl(router: unownedRouter, omdbId: omdbId)
            viewController.bind(to: viewModel)
        return .push(viewController, animation: .default)
            
        
        }
    }
}
