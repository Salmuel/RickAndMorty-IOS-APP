//
//  RMService.swift
//  RickAndMorty
//
//  Created by Samy Salama on 2/13/23.
//

import Foundation


/// Primary API Service Object to get Rick and Morty Data
final class RMService {
    
    /// shared singleton instance
    static let shared = RMService()
    
    /// Privatized Constructor
    private init() {}
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request Instance
    ///   - completion: Callback with Data or error
    ///   - type: Type of object we expect to get back
    public func execute<T: Codable>(_ request: RMRequest,
                                    expecting type: T.Type,
                                    completion: @escaping (Result<String, Error>) -> Void
    ){
        
    }
}
