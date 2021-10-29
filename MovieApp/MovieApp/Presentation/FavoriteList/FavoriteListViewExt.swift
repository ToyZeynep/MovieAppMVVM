//
//  FavoriteListViewExt.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//

import Foundation
import Foundation
import UIKit
import Foundation

extension FavoritesListView {
    func setUpFavoritesListContentView()  {
        view.backgroundColor = UIColor(rgb: 0xF5F5F5)
        addSubview(favoritesListContentView)
        if #available(iOS 11.0, *) {
            favoritesListContentView.setTop(equalTo: safeAreaLayoutGuide.topAnchor)
        }
        favoritesListContentView.setLeft(equalTo: leftAnchor)
        favoritesListContentView.setRight(equalTo: rightAnchor)
        favoritesListContentView.setBottom(equalTo: bottomAnchor)
        
        setUpFavoritesListToolBarLineView()
        setUpFavoritesListCollectionView()
        
    }
    
    func setUpFavoritesListToolBarLineView() {
        favoritesListContentView.addSubview(favoritesListToolBarLineView)
        favoritesListToolBarLineView.setTop(equalTo: favoritesListContentView.topAnchor)
        favoritesListToolBarLineView.setLeft(equalTo: favoritesListContentView.leftAnchor)
        favoritesListToolBarLineView.setRight(equalTo: favoritesListContentView.rightAnchor)
        favoritesListToolBarLineView.setHeight(height: 1)
    }
    

    func setUpFavoritesListCollectionView() {
        favoritesListContentView.addSubview(favoritesListCollectionView)
        favoritesListCollectionView.setTop(equalTo: favoritesListContentView.topAnchor , constant: 10)
        favoritesListCollectionView.setLeft(equalTo: favoritesListContentView.leftAnchor)
        favoritesListCollectionView.setRight(equalTo: favoritesListContentView.rightAnchor)
        favoritesListCollectionView.setBottom(equalTo: favoritesListContentView.bottomAnchor)
    }
}
