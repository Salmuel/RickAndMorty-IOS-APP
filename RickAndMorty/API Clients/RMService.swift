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
    public func execute(_ request: RMRequest, completion: @escaping () -> Void){
        
    }
}
