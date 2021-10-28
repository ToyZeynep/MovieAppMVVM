//
//  FavoriteListCoordinator.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa
import XCoordinator

enum FavoritesListRoute: Route {
    
    case favoritesList
    case movieDetail(omdbId:String)
    case dismiss
}

class FavoritesListCoordinator: NavigationCoordinator<FavoritesListRoute> {
    
    init(rootViewController: UINavigationController) {
        super.init(rootViewController: rootViewController , initialRoute: .favoritesList)
    }
    
    override func prepareTransition(for route: FavoritesListRoute) -> NavigationTransition {
        switch route {
 
       case .favoritesList:
            let viewController = FavoritesListViewController()
            let viewModel = FavoriteListViewModelImpl(router: unownedRouter)
            viewController.bind(to: viewModel)
            return .push(viewController, animation: .none)
     
      case .movieDetail(let omdbId):
            let coordinator = CharacterDetailsCoordinator(rootViewController: rootViewController, omdbId: omdbId)
            addChild(coordinator)
            return .none()
        case.dismiss :
            return .pop(animation: .default)
 
        }
    }
}
