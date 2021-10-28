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

protocol MovieDetailUseCaseType {
    func getMovieDetails(params: [String: Any]) -> Observable<MovieDetailResponse>
}


struct MovieDetailUseCase: MovieDetailUseCaseType {
   
    func getMovieDetails(params: [String : Any]) -> Observable<MovieDetailResponse> {
        return ApiClient.getMovieDetails(params: params)
    }
    

}
