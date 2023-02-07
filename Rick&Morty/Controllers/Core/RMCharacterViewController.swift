//
//  RMCharacterViewController.swift
//  Rick&Morty
//
//  Created by Erxhan Selmani on 04/02/2023.
//

import UIKit

/// Controller to show and search for Characters
final class RMCharacterViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"

        RMService.shared.execute(.listCharactersRequest, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case let .success(success):
                print("Total: \(success.info.count)")
                print("Total: \(success.info.pages)")
                print("Page result count: \(success.results.count)")
            case let .failure(failure):
                print(String(describing: failure))
            }
        }
    }
}
