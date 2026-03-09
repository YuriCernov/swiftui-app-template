//
//  APIError.swift
//  SwiftUIAppTemplate
//

import Foundation

enum APIError: Error, LocalizedError {

    case invalidURL
    case invalidResponse
    case httpStatus(Int)
    case decoding(Error)
    case underlying(Error)

    var errorDescription: String? {
        switch self {
        case .invalidURL: 
            return "Invalid URL"
        case .invalidResponse: 
            return "Invalid response"
        case .httpStatus(let code): 
            return "HTTP error \(code)"
        case .decoding(let error): 
            return "Decoding error: \(error.localizedDescription)"
        case .underlying(let error):
            return error.localizedDescription
        }
    }
}
