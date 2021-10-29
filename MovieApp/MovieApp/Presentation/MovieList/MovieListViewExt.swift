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
        view.backgroundColor = UIColor(rgb: 0xF5F5F5)
        addSubview(movieListContentView)
        if #available(iOS 11.0, *) {
            movieListContentView.setTop(equalTo: safeAreaLayoutGuide.topAnchor)
        }
        movieListContentView.setLeft(equalTo: leftAnchor)
        movieListContentView.setRight(equalTo: rightAnchor)
        movieListContentView.setBottom(equalTo: bottomAnchor)
        
        setUpToolbarView()
        setUpMovieListToolBarLineView()
        setMovieListCollectionView()
        
    }
    
    func setUpToolbarView() {
        movieListContentView.addSubview(toolbarView)
        toolbarView.setTop(equalTo: movieListContentView.topAnchor)
        toolbarView.setLeft(equalTo: movieListContentView.leftAnchor)
        toolbarView.setRight(equalTo: movieListContentView.rightAnchor)
        toolbarView.setHeight(height: 40)
        
        setFavoritesButton ()
        setSearchButton()
        setSearchTextField()

       
        
    }
    
    func setSearchTextField () {
        toolbarView.addSubview(movieListSearchTextField)
        movieListSearchTextField.setTop(equalTo: toolbarView.topAnchor, constant: 5)
        movieListSearchTextField.setLeft(equalTo: toolbarView.leftAnchor, constant: 10)
        movieListSearchTextField.setBottom(equalTo: toolbarView.bottomAnchor, constant: -5)
        movieListSearchTextField.setRight(equalTo: movieListSearchButton.leftAnchor, constant: -10)
        movieListSearchTextField.setHeight(height: 30)
    }
    
    func setSearchButton (){
        toolbarView.addSubview(movieListSearchButton)
        movieListSearchButton.setTop(equalTo: toolbarView.topAnchor, constant: 5)
        movieListSearchButton.setRight(equalTo: movieListFavoritesButton.leftAnchor, constant: -10)
        movieListSearchButton.setHeight(height: 30)
        movieListSearchButton.setWidth(width: 30)
    }
    func setFavoritesButton (){
        toolbarView.addSubview(movieListFavoritesButton)
        movieListFavoritesButton.setTop(equalTo: toolbarView.topAnchor, constant: 5)
       // movieListFavoritesButton.setLeft(equalTo: movieListSearchButton.rightAnchor, constant: 10)
        movieListFavoritesButton.setRight(equalTo: toolbarView.rightAnchor, constant: -10)
        movieListFavoritesButton.setHeight(height: 30)
        movieListFavoritesButton.setWidth(width: 30)
        
    }
   /* func setGridButton (){
        movieListContentView.addSubview(movieListGridButton)
        movieListGridButton.setTop(equalTo: movieListContentView.topAnchor, constant: 10)
        movieListGridButton.setLeft(equalTo: movieListFavoritesButton.rightAnchor, constant: 10)
        movieListGridButton.setRight(equalTo: movieListContentView.rightAnchor, constant: -10)
        movieListGridButton.setHeight(height: 50)
        movieListGridButton.setWidth(width: 50)
        
    }*/

    func setUpMovieListToolBarLineView() {
        movieListContentView.addSubview(movieListToolBarLineView)
        movieListToolBarLineView.setTop(equalTo:  toolbarView.bottomAnchor)
        movieListToolBarLineView.setLeft(equalTo: movieListContentView.leftAnchor)
        movieListToolBarLineView.setRight(equalTo: movieListContentView.rightAnchor)
        movieListToolBarLineView.setHeight(height: 1)
    }
    
    func setMovieListCollectionView()  {
        movieListContentView.addSubview(movieListCollectionView)
        movieListCollectionView.setTop(equalTo: movieListToolBarLineView.bottomAnchor, constant: 5)
        movieListCollectionView.setLeft(equalTo: movieListContentView.leftAnchor)
        movieListCollectionView.setRight(equalTo: movieListContentView.rightAnchor)
        movieListCollectionView.setBottom(equalTo: movieListContentView.bottomAnchor)
        
    }
}
