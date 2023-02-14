//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Samy Salama on 2/12/23.
//

import UIKit


/// Controller to show and search for characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        title = "Chacracters"
        
        let request = RMRequest(endpoint: .character, queryParameters: [ URLQueryItem(name:"name", value: "rick"), URLQueryItem(name: "status", value: "alive")
                                                                         ])
        print(request.url)
        
        RMService.shared.execute(request, expecting: RMCharacter.self) { result in
            
        }
                    
    }
}
