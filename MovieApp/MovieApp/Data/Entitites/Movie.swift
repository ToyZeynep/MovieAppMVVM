//
//  Movie.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//

import Foundation
import RealmSwift
class Movie : Object ,Codable {
    @objc dynamic var title : String?
    @objc dynamic var year : String?
    @objc dynamic var imdbID : String?
    @objc dynamic var type : String?
    @objc dynamic var poster : String?

    enum CodingKeys: String, CodingKey {

        case title = "Title"
        case year = "Year"
        case imdbID = "imdbID"
        case type = "Type"
        case poster = "Poster"
    }
}
