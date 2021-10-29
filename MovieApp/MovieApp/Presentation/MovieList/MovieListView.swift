//
//  MovieListView.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//

import Foundation
import UIKit
import Material
class MovieListView : UIView {
    
    lazy var movieListContentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var toolbarView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(rgb: 0xF5F5F5)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var movieListSearchTextField : UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.placeholder = "Enter movie name"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.autocorrectionType = UITextAutocorrectionType.no
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = .search
        textField.layer.cornerRadius = 10
        textField.clearButtonMode = UITextField.ViewMode.whileEditing
        textField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        //textField.delegate = self
        return textField
    }()
    
    lazy var movieListSearchButton : UIButton = {
        let image = UIImage(named: "search2")
        var button = UIButton()
        button.setImage(image, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.imageEdgeInsets = EdgeInsets(top: 5 , left: 5, bottom: 5, right: 5)
        return button
    }()
    
    lazy var movieListFavoritesButton : UIButton = {
        var button = UIButton()
        button.setImage(UIImage(named: "favorite")?.withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        button.imageEdgeInsets = EdgeInsets(top: 3, left: 3, bottom: 3 , right: 3)
        return button
    }()
    
    lazy var movieListGridButton : UIButton = {
        var button = UIButton()
        button.setImage(UIImage(named: "grid-1")?.withRenderingMode(.alwaysTemplate), for: .normal)
      //  button.layer.cornerRadius = 6
        button.tintColor = .black
        button.backgroundColor = .clear
        //button.layer.borderWidth = 1
       // button.layer.borderColor = UIColor.white.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        button.imageEdgeInsets = EdgeInsets(top: 3, left: 3, bottom: 3 , right: 3)
        return button
    }()
    
    lazy var movieListToolBarLineView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
        return view
    }()
    
    lazy var movieListCollectionView: UICollectionView = {
        let layout = GridFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.keyboardDismissMode = .onDrag
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpMovieListContentView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpMovieListContentView()
    }
}
