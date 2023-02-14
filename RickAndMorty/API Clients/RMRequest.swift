//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Samy Salama on 2/13/23.
//

import Foundation


/// Object that represents a single API call
final class RMRequest{
    
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    
    /// Desired endpoint
    private let endpoint: RMEndpoint
    
    
    /// path components for API if any
    private let pathComponents: [String]
    
    /// Query argyments for API if any
   private let queryParameters: [URLQueryItem]
    /// Constructed URL for api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name) = \(value)"
            }).joined(separator: "&")
            string += argumentString
        }
        return string
    }
    
    
    /// Computed and constructed API Url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    
    /// desired http method
    public let httpMethod = "GET"
    
   public init(
         endpoint: RMEndpoint,
         pathComponents: [String] = [],
         queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}

extension RMRequest {
    static let listCharactersRequest = RMRequest(endpoint: .character)
}
