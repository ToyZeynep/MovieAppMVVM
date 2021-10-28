//
//  MovieDetailsViewExt.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//

import Foundation
extension MovieDetailsView {
    
    func setUpMovieDetailsContentView()  {
        addSubview(movieDetailsContentView)
        if #available(iOS 11.0, *) {
            movieDetailsContentView.setTop(equalTo: safeAreaLayoutGuide.topAnchor)
        }
        movieDetailsContentView.setLeft(equalTo: leftAnchor, constant: 30)
        movieDetailsContentView.setRight(equalTo: rightAnchor, constant: -30)
        movieDetailsContentView.setBottom(equalTo: bottomAnchor, constant: -30)
        setmovieDetailsImageView()
        setMovieDetailsNameLabel ()
        setMovieDetailsSummaryLabel()
    }
    
    func setmovieDetailsImageView() {
        movieDetailsContentView.addSubview(movieDetailsImageView)
        movieDetailsImageView.setTop(equalTo: movieDetailsContentView.topAnchor, constant: 10)
        movieDetailsImageView.setLeft(equalTo: movieDetailsContentView.leftAnchor, constant: 10)
        movieDetailsImageView.setRight(equalTo: movieDetailsContentView.rightAnchor, constant: -10)
        movieDetailsImageView.setHeight(height: 400)
       // movieDetailsImageView.setWidth(width: 200)
    }
    
    func setMovieDetailsNameLabel(){
        movieDetailsContentView.addSubview(movieDetailsNameLabel)
        movieDetailsNameLabel.setTop(equalTo: movieDetailsImageView.bottomAnchor, constant: 10)
        movieDetailsNameLabel.setLeft(equalTo: movieDetailsContentView.leftAnchor, constant: 10)
        movieDetailsNameLabel.setRight(equalTo: movieDetailsContentView.rightAnchor, constant: -10)
    }
    
    func setMovieDetailsSummaryLabel(){
        movieDetailsContentView.addSubview(movieDetailsSummaryLabel)
        movieDetailsSummaryLabel.setTop(equalTo: movieDetailsNameLabel.bottomAnchor, constant: 10)
        movieDetailsSummaryLabel.setLeft(equalTo: movieDetailsContentView.leftAnchor, constant: 10)
        movieDetailsSummaryLabel.setRight(equalTo: movieDetailsContentView.rightAnchor, constant: -10)
    }
    func setmovieDetailsImdbRatingLabel(){
        movieDetailsContentView.addSubview(movieDetailsImdbRatingLabel)
        movieDetailsImdbRatingLabel.setTop(equalTo: movieDetailsSummaryLabel.bottomAnchor, constant: 10)
        movieDetailsImdbRatingLabel.setLeft(equalTo: movieDetailsContentView.leftAnchor, constant: 10)
        movieDetailsImdbRatingLabel.setRight(equalTo: movieDetailsContentView.rightAnchor, constant: -10)
    }
}
