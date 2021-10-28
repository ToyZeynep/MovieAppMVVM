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
        movieListCellContentView.addSubview(movieListCellImageView)
        movieListCellImageView.setTop(equalTo: movieListCellContentView.topAnchor)
        movieListCellImageView.setRight(equalTo: movieListCellContentView.rightAnchor)
        movieListCellImageView.setLeft(equalTo: movieListCellContentView.leftAnchor)
    }
    
    func setMovieNameLabel (){
        movieListCellContentView.addSubview(movieListCellNameLabel)
        movieListCellNameLabel.setTop(equalTo: movieListCellImageView.bottomAnchor, constant: 10)
        movieListCellNameLabel.setRight(equalTo: movieListCellContentView.rightAnchor, constant: -10)
        movieListCellNameLabel.setLeft(equalTo: movieListCellContentView.leftAnchor, constant: 10)
    }
    
    func setMovieYearLabel (){
        movieListCellContentView.addSubview(movieListCellYearLabel)
        movieListCellYearLabel.setTop(equalTo:movieListCellNameLabel.bottomAnchor , constant: 10)
        movieListCellYearLabel.setBottom(equalTo: movieListCellContentView.bottomAnchor, constant: -10)
        movieListCellYearLabel.setRight(equalTo: movieListCellContentView.rightAnchor ,   constant: -10)
        movieListCellYearLabel.setLeft(equalTo: movieListCellContentView.leftAnchor, constant: 10)
    }
    
    func setAddFavoriteButton()  {
        movieListCellContentView.addSubview(movieListCellAddFavoriteButton)
        movieListCellAddFavoriteButton.setTop(equalTo: movieListCellImageView.topAnchor, constant: 10)
        movieListCellAddFavoriteButton.setRight(equalTo: movieListCellContentView.rightAnchor, constant: -10)
        movieListCellAddFavoriteButton.setWidth(width: 30)
        movieListCellAddFavoriteButton.setHeight(height: 30)
    }
}
