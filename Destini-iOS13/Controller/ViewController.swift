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
        Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
        Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
        Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]
    // track where the user is in the storyline
    var currentStoryPath = 0
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
        // current story based on currentStoryPath value
        let currentStory = stories[currentStoryPath]
        
        if userChoice == currentStory.choice1 {
            currentStoryPath = 1
        } else if userChoice == currentStory.choice2 {
            currentStoryPath = 2
        }
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = stories[currentStoryPath].title
        choice1Button.setTitle(stories[currentStoryPath].choice1, for: .normal)
        choice2Button.setTitle(stories[currentStoryPath].choice2, for: .normal)
    }
}

