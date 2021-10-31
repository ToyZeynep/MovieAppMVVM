//
//  FavoriteListView.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//

import Foundation
import Foundation
import UIKit
import Material

class FavoritesListView: UIView {
    
    lazy var favoritesListContentView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(rgb: 0xF5F5F5)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var favoritesListToolBarLineView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
        return view
    }()

    lazy var favoritesListCollectionView: UICollectionView = {
        let layout = GridFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.keyboardDismissMode = .onDrag
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpFavoritesListContentView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
}
