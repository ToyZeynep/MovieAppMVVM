//
//  SplashView.swift
//  MovieApp
//
//  Created by MacOS on 3.11.2021.
//

import Foundation
import UIKit
import Material
import SwiftGifOrigin

class SplashView: UIView {
    
    lazy var splashContentView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var splashImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.loadGif(asset: "movie2")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpSplashContentView()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
