//
//  Section.swift
//  finalprojectswift
//
//  Created by user on 3/14/24.
//  Copyright © 2024 user. All rights reserved.
//

import Foundation

class Section {
    let countryTitle: String
    let option: [String]
    var isOpened: Bool = false
    
    init(title: String, option: [String], isOpened: Bool = false) {
        self.countryTitle = title
        self.option = option
        self.isOpened = isOpened
    }
}
