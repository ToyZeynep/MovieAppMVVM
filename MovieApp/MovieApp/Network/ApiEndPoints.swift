//
//  ApiEndPoints.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//

import Foundation
import Alamofire

enum ApiEndPoint: APIConfiguration {
    
    case movieList(params: [String: Any])
    case movieDetails(params: [String: Any])
    
    var movieUrl : String {
    return "?apikey=796ec500"
    }
    

        var method: HTTPMethod {
            switch self {
            case .movieList:
                return .get
            case .movieDetails:
                return .get
            }
        }
    
    
    var path: String {
        switch self {
        case .movieList:
            return ""
        case .movieDetails:
            return ""
        }
    }
    
    var parameters: Parameters? {
        switch self {
        case .movieList(let params):
            return params
        case .movieDetails(let params):
            return params
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        
        let url = try "https://www.omdbapi.com/?apikey=796ec500".asURL()
        
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        
        // HTTP Method
        urlRequest.httpMethod = method.rawValue
        
        
        // Parameters
        let encoding: ParameterEncoding = {
            switch method {
            case .post:
                return JSONEncoding.default
            default:
                return URLEncoding.default
            }
        }()
        print(urlRequest)
        return try encoding.encode(urlRequest, with: parameters)
        print(urlRequest)
        
    }
}
