//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    
    let Storytitle: String
    let Storychoice1: String
    let Storychoice2: String
    
    init(title: String, choice1: String, choice2: String) {
        Storytitle = title
        Storychoice1 = choice1
        Storychoice2 = choice1
    }
}
