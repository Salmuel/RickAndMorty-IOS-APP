//
//  GetAllCharacterResponse.swift
//  RickAndMorty
//
//  Created by Samy Salama on 2/13/23.
//

import Foundation

struct RMGetAllCharactersRespone: Codable{
    struct info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
        
    }
    
    let info: info
    let results: [RMCharacter]
    
}

