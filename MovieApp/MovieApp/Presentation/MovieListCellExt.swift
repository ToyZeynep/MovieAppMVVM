//
//  MovieListCellExt.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//
import Foundation
extension MovieListCell {
    
    func setUpmovieListCellContentView() {
        contentView.addSubview(movieListCellContentView)
        movieListCellContentView.setTop(equalTo: topAnchor)
        movieListCellContentView.setLeft(equalTo: leftAnchor, constant: 10)
        movieListCellContentView.setRight(equalTo: rightAnchor, constant: -10)
        movieListCellContentView.setHeight(height: 375)
        movieListCellContentView.setWidth(width: 160)
        setImageView()
        setMovieNameLabel ()
        setMovieYearLabel ()
        setAddFavoriteButton()
    }
    
    func setImageView() {
        movieListCellContentView.addSubview(movieListImageView)
        movieListImageView.setTop(equalTo: movieListCellContentView.topAnchor)
        movieListImageView.setRight(equalTo: movieListCellContentView.rightAnchor)
        movieListImageView.setLeft(equalTo: movieListCellContentView.leftAnchor)
    }
    
    func setMovieNameLabel (){
        movieListCellContentView.addSubview(movieListNameLabel)
        movieListNameLabel.setTop(equalTo: movieListImageView.bottomAnchor, constant: 10)
        movieListNameLabel.setRight(equalTo: movieListCellContentView.rightAnchor, constant: -10)
        movieListNameLabel.setLeft(equalTo: movieListCellContentView.leftAnchor, constant: 10)
    }
    
    func setMovieYearLabel (){
        movieListCellContentView.addSubview(movieListYearLabel)
        movieListYearLabel.setTop(equalTo:movieListNameLabel.bottomAnchor , constant: 10)
        movieListYearLabel.setBottom(equalTo: movieListCellContentView.bottomAnchor, constant: -10)
        movieListYearLabel.setRight(equalTo: movieListCellContentView.rightAnchor ,   constant: -10)
        movieListYearLabel.setLeft(equalTo: movieListCellContentView.leftAnchor, constant: 10)
    }
    
    func setAddFavoriteButton()  {
        movieListCellContentView.addSubview(addFavoriteButton)
        addFavoriteButton.setTop(equalTo: movieListImageView.topAnchor, constant: 10)
        addFavoriteButton.setRight(equalTo: movieListCellContentView.rightAnchor, constant: -10)
        addFavoriteButton.setWidth(width: 30)
        addFavoriteButton.setHeight(height: 30)
    }
}
