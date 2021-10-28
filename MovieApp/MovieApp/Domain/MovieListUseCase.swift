//
//  MovieListUseCase.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//
import Foundation
import Alamofire
import RxSwift
import RxCocoa

protocol MovieListUseCaseType {
    
    func getMovieList(params: [String: Any]) -> Observable<MovieListResponse>
}


struct MovieListUseCase: MovieListUseCaseType {
   
    func getMovieList(params: [String : Any]) -> Observable<MovieListResponse> {
        return ApiClient.getMovieList(params: params)
    }
    

}
