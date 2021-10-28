//
//  MovieListViewExt.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//

import Foundation
import UIKit
extension MovieListView {
    func setUpMovieListContentView()  {
        addSubview(movieListContentView)
        if #available(iOS 11.0, *) {
            movieListContentView.setTop(equalTo: safeAreaLayoutGuide.topAnchor)
        }
        movieListContentView.setLeft(equalTo: leftAnchor)
        movieListContentView.setRight(equalTo: rightAnchor)
        movieListContentView.setBottom(equalTo: bottomAnchor)
        setSearchTextField()
        setSearchButton ()
        setFavoritesButton ()
        setUpMovieListToolBarLineView()
        setMovieListCollectionView()
    }
    func setSearchTextField () {
        movieListContentView.addSubview(searchTextField)
        searchTextField.setTop(equalTo: movieListContentView.topAnchor, constant: 10)
        searchTextField.setLeft(equalTo: movieListContentView.leftAnchor, constant: 5)
        searchTextField.setHeight(height: 50)
    }
    
    func setSearchButton (){
        movieListContentView.addSubview(searchButton)
        searchButton.setTop(equalTo: movieListContentView.topAnchor, constant: 10)
        searchButton.setLeft(equalTo: searchTextField.rightAnchor , constant: 10)
        searchButton.setHeight(height: 50)
        searchButton.setWidth(width: 50)
    }
    func setFavoritesButton (){
        movieListContentView.addSubview(favoritesButton)
        favoritesButton.setTop(equalTo: movieListContentView.topAnchor, constant: 10)
        favoritesButton.setLeft(equalTo: searchButton.rightAnchor, constant: 10)
        favoritesButton.setRight(equalTo: movieListContentView.rightAnchor, constant: -10)
        favoritesButton.setHeight(height: 50)
        favoritesButton.setWidth(width: 50)
        
    }
    func setUpMovieListToolBarLineView() {
        movieListContentView.addSubview(movieListToolBarLineView)
        movieListToolBarLineView.setTop(equalTo: searchTextField.bottomAnchor, constant: 5)
        movieListToolBarLineView.setLeft(equalTo: movieListContentView.leftAnchor)
        movieListToolBarLineView.setRight(equalTo: movieListContentView.rightAnchor)
        movieListToolBarLineView.setHeight(height: 3)
    }
    func setMovieListCollectionView()  {
        movieListContentView.addSubview(movieListCollectionView)
        movieListCollectionView.setTop(equalTo: movieListToolBarLineView.bottomAnchor, constant: 5)
        movieListCollectionView.setLeft(equalTo: movieListContentView.leftAnchor)
        movieListCollectionView.setRight(equalTo: movieListContentView.rightAnchor)
        movieListCollectionView.setBottom(equalTo: movieListContentView.bottomAnchor)
        
    }
}
