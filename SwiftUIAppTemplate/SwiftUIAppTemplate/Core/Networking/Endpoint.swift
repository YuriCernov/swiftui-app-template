//
//  Endpoint.swift
//  SwiftUIAppTemplate
//

import Foundation

struct Endpoint {

    let path: String
    var queryItems: [URLQueryItem] = []

    init(path: String, queryItems: [URLQueryItem] = []) {
        self.path = path
        self.queryItems = queryItems
    }
}
