//
//  APIServiceConfig.swift
//  TMDB
//
//  Created by Muhammad M Munir on 30/07/22.
//

import Foundation

public protocol APIServiceConfigInterface {
    var baseURL: String { get }
    var headers: [String: String] { get }
    var queryParams: [String: String] { get }
}

public struct APIServiceConfig: APIServiceConfigInterface {
    public let baseURL: String
    public let headers: [String: String]
    public let queryParams: [String: String]
    
    public init(
        baseURL: String,
        headers: [String: String] = [:],
        queryParams: [String: String] = [:]
    ) {
        self.baseURL = baseURL
        self.headers = headers
        self.queryParams = queryParams
    }
}