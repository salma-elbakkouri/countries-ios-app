//
//  CountryDetailViewController.swift
//  finalprojectswift
//
//  Created by user on 3/14/24.
//  Copyright © 2024 user. All rights reserved.
//

import UIKit

class CountryDetailViewController: UIViewController {
    let country: String
    
    init(country: String) {
        self.country = country
        super.init(nibName: nil, bundle: nil)
        title = country // Set the title of the navigation bar
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let titleLabel = UILabel()
        titleLabel.text = country
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.boldSystemFont(ofSize: 24)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)
        
        // Add your description label and cities label here
        // ...
        
        NSLayoutConstraint.activate([
            // Title label constraints
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            // Add constraints for description label and cities label here
            // ...
        ])
    }
}
