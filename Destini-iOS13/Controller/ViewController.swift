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
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
   }
    
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoiceText(for: 1), for: .normal)
        choice2Button.setTitle(storyBrain.getChoiceText(for: 2), for: .normal)
    }
    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        if let userChoice = sender.titleLabel?.text {
            storyBrain.nextStory(userChoice: userChoice)
            updateUI()
        }
    }
    
}



// Implementing the MVC Design Pattern.
