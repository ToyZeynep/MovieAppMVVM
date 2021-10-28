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
        movieListContentView.addSubview(movieListSearchTextField)
        movieListSearchTextField.setTop(equalTo: movieListContentView.topAnchor, constant: 10)
        movieListSearchTextField.setLeft(equalTo: movieListContentView.leftAnchor, constant: 5)
        movieListSearchTextField.setHeight(height: 50)
    }
    
    func setSearchButton (){
        movieListContentView.addSubview(movieListSearchButton)
        movieListSearchButton.setTop(equalTo: movieListContentView.topAnchor, constant: 10)
        movieListSearchButton.setLeft(equalTo: searchTextField.rightAnchor , constant: 10)
        movieListSearchButton.setHeight(height: 50)
        movieListSearchButton.setWidth(width: 50)
    }
    func setFavoritesButton (){
        movieListContentView.addSubview(movieListFavoritesButton)
        movieListFavoritesButton.setTop(equalTo: movieListContentView.topAnchor, constant: 10)
        movieListFavoritesButton.setLeft(equalTo: movieListSearchButton.rightAnchor, constant: 10)
        movieListFavoritesButton.setRight(equalTo: movieListContentView.rightAnchor, constant: -10)
        movieListFavoritesButton.setHeight(height: 50)
        movieListFavoritesButton.setWidth(width: 50)
        
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
