//
//  MovieDetailsViewController.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//
import Foundation
import UIKit
import RxCocoa
import RxSwift
import RxGesture
import XCoordinator
import Kingfisher
import Action
class MovieDetailsViewController : UIViewController, BindableType, UICollectionViewDelegate {
   
        let disposeBag = DisposeBag()
        var movieDetailsView = MovieDetailsView()
        var viewModel: MovieDetailViewModel!

        
        override func loadView() {
            view = movieDetailsView
        }
        
        override func viewDidLoad() {

        }

        func bindViewModel() {
            viewModel.output.imdbRating.bind(to: movieDetailsView.movieDetailsImdbRatingLabel.rx.text).disposed(by: disposeBag)
            viewModel.output.name.bind(to: movieDetailsView.movieDetailsNameLabel.rx.text).disposed(by: disposeBag)
            viewModel.output.summary.bind(to: movieDetailsView.movieDetailsSummaryLabel.rx.text).disposed(by: disposeBag)
            viewModel.output.imageUrl.subscribe(onNext : { [self] Url in
                let urlString = Url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
                movieDetailsView.movieDetailsImageView.kf.setImage(with: URL(string: urlString!))
                
            }).disposed(by: disposeBag)

        }
        
    }

