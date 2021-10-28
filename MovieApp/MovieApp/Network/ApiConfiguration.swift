//
//  ApiConfiguration.swift
//  MovieApp
//
//  Created by MacOS on 28.10.2021.
//

import Foundation
import Foundation
import Alamofire

protocol APIConfiguration: URLRequestConvertible {
    var method: HTTPMethod { get }
    var path: String { get }
    var parameters: Parameters? { get }
}
