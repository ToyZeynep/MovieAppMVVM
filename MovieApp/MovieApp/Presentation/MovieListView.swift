//
//  MovieListView.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//

import Foundation
import UIKit
class MovieListView : UIView {
    
    lazy var movieListContentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var movieListSearchTextField : UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        textField.placeholder = "enter movie name"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.font = UIFont.systemFont(ofSize: 20)
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.layer.borderColor = UIColor.blue.cgColor
        textField.autocorrectionType = UITextAutocorrectionType.no
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = UIReturnKeyType.done
        textField.layer.cornerRadius = 6
        textField.clearButtonMode = UITextField.ViewMode.whileEditing
        textField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        //textField.delegate = self
        return textField
    }()
    
    lazy var movieListSearchButton : UIButton = {
        let image = UIImage(named: "search")
        var button = UIButton()
        button.setImage(image, for: .normal)
        button.setTitle("ara", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.titleLabel?.textAlignment = .center
        button.setTitleColor(.blue, for: .normal)
        button.layer.cornerRadius = 6
        button.backgroundColor = .white
        button.tintColor = .brown
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var movieListFavoritesButton : UIButton = {
        let image = UIImage(named: "like")
        var button = UIButton()
        button.setImage(image, for: .normal)
        button.setTitle("like", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.titleLabel?.textAlignment = .center
        button.setTitleColor(.blue, for: .normal)
        button.layer.cornerRadius = 6
        button.backgroundColor = .white
        button.tintColor = .brown
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var movieListToolBarLineView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
        return view
    }()
    
    lazy var movieListCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
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
