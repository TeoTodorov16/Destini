//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!

    let stories = [
        ["You see a fork in the road.", "Take a left.","Take a right."],
        ["You see a tiger.","Shout for help.", "Play dead."],
        ["You find a treasure chest.", "Open it.", "Check for traps."]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        storyLabel.text = stories[0][0]
        choice1Button.setTitle(stories[0][1], for: .normal)
        choice2Button.setTitle(stories[0][2], for: .normal)
        
    }
    
   
    @IBAction func choiceMade(_ sender: Any) {
        
    }
    
}

