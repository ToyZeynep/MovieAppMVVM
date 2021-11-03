//
//  SplashViewController.swift
//  MovieApp
//
//  Created by MacOS on 3.11.2021.
//

import Foundation
import UIKit
import RxCocoa
import RxSwift
import XCoordinator

class SplashViewController: UIViewController,BindableType {
    
    private let disposeBag = DisposeBag()
    var splashView = SplashView()
    var viewModel: SplashViewModel!
    
    override func loadView() {
        view = splashView
    }
    
    override func viewDidLoad() {
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func bindViewModel() {
        
        
    }
}
