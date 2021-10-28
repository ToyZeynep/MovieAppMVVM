//
//  MovieDetailsView.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//

import Foundation
import UIKit
class MovieDetailsView : UIView {
    
    
    lazy var movieDetailsContentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(white: 1, alpha: 0.5)
        view.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.cornerRadius = 10
        view.layer.shadowColor = UIColor.lightGray.cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 10
        view.layer.masksToBounds = true
        view.layer.shouldRasterize = true
        return view
    }()
    
    lazy var movieDetailsImageView : UIImageView = {
        let imageName = "harry.jpeg"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 0
        imageView.clipsToBounds = true
        return imageView
    }()
     
    lazy var movieDetailsNameLabel : UILabel = {
        
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.center
        label.font = label.font.withSize(20)
        label.text = "name label"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()

    lazy var movieDetailsSummaryLabel : UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.center
        label.font = label.font.withSize(15)
        label.text = "summary label"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    lazy var movieDetailsImdbRatingLabel : UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = UIColor.black
        label.textAlignment = NSTextAlignment.center
        label.font = label.font.withSize(15)
        label.text = "summary label"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setUpMovieDetailsContentView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpMovieDetailsContentView()
       
    }
    
}
