//
//  MovieDetailsUseCase.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//

import Foundation
import Alamofire
import RxSwift
import RxCocoa

protocol MovieDetailsUseCaseType {
    func getMovieDetails(params: [String: Any]) -> Observable<MovieDetailsResponse>
}


struct MovieDetailsUseCase: MovieDetailsUseCaseType {
   
    func getMovieDetails(params: [String : Any]) -> Observable<MovieDetailsResponse> {
        return ApiClient.getMovieDetails(params: params)
    }
    

}
