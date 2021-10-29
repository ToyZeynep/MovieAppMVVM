//
//  Entities.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//

import Foundation

struct MovieListResponse: Codable {
    let movies : [Movie]?
    let totalResults : String?
    let response : String?

    enum CodingKeys: String, CodingKey {

        case movies = "Search"
        case totalResults = "totalResults"
        case response = "Response"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        movies = try values.decodeIfPresent([Movie].self, forKey: .movies)
        totalResults = try values.decodeIfPresent(String.self, forKey: .totalResults)
        response = try values.decodeIfPresent(String.self, forKey: .response)
    }
    
    
    func getTotalPageNumber() -> Int{
        let result = Int(Int(totalResults!)! / 10)
        let result2 = Int(totalResults!)! / 10
        if result == result2 {
            return result
        } else {
            return result + 1
        }

    }
}
