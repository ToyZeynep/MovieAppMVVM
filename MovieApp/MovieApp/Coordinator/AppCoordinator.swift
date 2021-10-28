//
//  AppCoordinator.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//

import Foundation
import UIKit
import RxSwift
import XCoordinator

enum AppRoute: Route {
    //case splash
    case movieList
}

class AppCoordinator: NavigationCoordinator<AppRoute> {
    
    init() {
        super.init(initialRoute: .movieList)
    }
    
    override func prepareTransition(for route: AppRoute) -> NavigationTransition {
        switch route {
   /*     case .splash:
            let viewController = SplashViewController()
            let viewModel = SplashViewModelImpl(router: unownedRouter)
            viewController.bind(to: viewModel)
            return .push(viewController)*/
            
        case .movieList:
            let coordinator = MovieListCoordinator()
            return .presentFullScreen(coordinator, animation: .default)
            
       
        }
    }
}
