//
//  FavoriteListCellExt.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//

import Foundation
 
extension FavoriteListCell {
    
    func setUpFavoritesListCellContentView() {
        addSubview(favoritesListCellContentView)
        favoritesListCellContentView.setTop(equalTo: topAnchor)
        favoritesListCellContentView.setLeft(equalTo: leftAnchor, constant: 10)
        favoritesListCellContentView.setRight(equalTo: rightAnchor, constant: -10)
        favoritesListCellContentView.setBottom(equalTo: bottomAnchor, constant : -10)
        
        setFavoriteListCellImageView()
        setFavoriteListCellNameLabel ()
        setFavoriteListCellYearLabel ()
        setFavoriteListCellDeleteFavoriteButton()
    }
    
    func setFavoriteListCellImageView() {
        favoritesListCellContentView.addSubview(favoritesListCellImageView)
        favoritesListCellImageView.setTop(equalTo: favoritesListCellContentView.topAnchor)
        favoritesListCellImageView.setRight(equalTo: favoritesListCellContentView.rightAnchor)
        favoritesListCellImageView.setLeft(equalTo: favoritesListCellContentView.leftAnchor)
        favoritesListCellImageView.setHeight(height: 300)
    }
    
    func setFavoriteListCellNameLabel (){
        favoritesListCellContentView.addSubview(favoritesListCellNameLabel)
        favoritesListCellNameLabel.setTop(equalTo: favoritesListCellImageView.bottomAnchor, constant: 10)
        favoritesListCellNameLabel.setRight(equalTo: favoritesListCellContentView.rightAnchor, constant: -10)
        favoritesListCellNameLabel.setLeft(equalTo: favoritesListCellContentView.leftAnchor, constant: 10)
    }
    
    func setFavoriteListCellYearLabel (){
        favoritesListCellContentView.addSubview(favoritesListCellYearLabel)
        favoritesListCellYearLabel.setTop(equalTo:favoritesListCellNameLabel.bottomAnchor , constant: 10)
        favoritesListCellYearLabel.setBottom(equalTo: favoritesListCellContentView.bottomAnchor, constant: -10)
        favoritesListCellYearLabel.setRight(equalTo: favoritesListCellContentView.rightAnchor ,   constant: -10)
        favoritesListCellYearLabel.setLeft(equalTo: favoritesListCellContentView.leftAnchor, constant: 10)
    }
    
    func setFavoriteListCellDeleteFavoriteButton()  {
        favoritesListCellContentView.addSubview(favoritesListCellDeleteFavoriteButton)
        favoritesListCellDeleteFavoriteButton.setTop(equalTo: favoritesListCellImageView.topAnchor, constant: 10)
        favoritesListCellDeleteFavoriteButton.setRight(equalTo: favoritesListCellContentView.rightAnchor, constant: -10)
        favoritesListCellDeleteFavoriteButton.setWidth(width: 30)
        favoritesListCellDeleteFavoriteButton.setHeight(height: 30)
    }
}
