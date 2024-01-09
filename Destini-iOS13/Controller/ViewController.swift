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
    
    var storyNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
       updateUI()
        
    }
    
    func updateUI() {
        storyLabel.text = stories[storyNumber][0]
        choice1Button.setTitle(stories[storyNumber][1], for: .normal)
        choice2Button.setTitle(stories[storyNumber][2], for: .normal)
    }
    
   
    @IBAction func choiceMade(_ sender: UIButton) {
        if sender == choice1Button {
                // User chose the left option
                if storyNumber == 0 {
                    storyNumber = 1
                } else if storyNumber == 1 {
                    // Handle the choice made after seeing the tiger
                    // (e.g., continue the story or show an outcome)
                }
                // You can continue this pattern for other story branches.
            } else if sender == choice2Button {
                // User chose the right option
                if storyNumber == 0 {
                    storyNumber = 2
                } else if storyNumber == 1 {
                    // Handle the choice made after encountering the tiger
                    // (e.g., continue the story or show an outcome)
                }
                // You can continue this pattern for other story branches.
            }

            updateUI()
            }
    
}

