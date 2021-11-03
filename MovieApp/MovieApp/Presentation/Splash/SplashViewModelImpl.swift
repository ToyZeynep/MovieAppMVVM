//
//  SplashViewModelIMPL.swift
//  MovieApp
//
//  Created by MacOS on 3.11.2021.
//

import Foundation
import RxSwift
import RxCocoa
import XCoordinator

class SplashViewModelImpl: SplashViewModel, SplashViewModelInput, SplashViewModelOutput {
    
    
    
    // MARK: -Inputs-
    
    // MARK: -Outputs-
    
    // MARK: -Stored properties-
    
    private let router: UnownedRouter<AppRoute>
    
    // MARK: -Initialization-
    
    init(router: UnownedRouter<AppRoute>) {
        self.router = router
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.navigateToCharacterList()
        }
    }
    
    func navigateToCharacterList() {
        router.trigger(.movieList)
    }
}
