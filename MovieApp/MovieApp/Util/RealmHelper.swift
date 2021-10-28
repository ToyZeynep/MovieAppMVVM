//
//  RealmHelper.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//
import Foundation
import Realm
import RealmSwift

class RealmHelper {
    
    private var   database:Realm
    static let   sharedInstance = RealmHelper()
    
    private init() {
        database = try! Realm()
    }
    
    func addMovieToFavorites(movie: Movie) {
        try! database.write {
            //database.add(characterDetails)
            database.create(Movie.self, value: movie)
            
        }
    }
    
    func fetchFavoriteList() -> Results<Movie> {
        let object = database.objects(Movie.self)
        return object;
    }
    
    func deleteAllFromDatabase()  {
        try!   database.write {
            database.deleteAll()
        }
    }
    
    func deleteFromDb(movie : Movie )   {
        try! database.write {
            database.delete(movie)
        }
    }
}

