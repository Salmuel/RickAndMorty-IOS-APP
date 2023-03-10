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
        
        RMService.shared.execute(.listCharactersRequest, expecting: RMGetAllCharactersRespone.self) { result in
            switch result {
            case .success(let model):
                print("Total: "+String(model.info.pages))
                      print("Page result count: "+String(model.results.count))
            case .failure(let error):
              print(String(describing: error))
            }
        }
                    
    }
}
