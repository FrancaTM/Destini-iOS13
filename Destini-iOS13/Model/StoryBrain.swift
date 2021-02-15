//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    let stories = [
        Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
        Story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
        Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]
    // track where the user is in the storyline
    var currentStoryPath = 0
    
    func getStoryTitle() -> String {
        return stories[currentStoryPath].title
    }
    
    func getChoice1() -> String {
        return stories[currentStoryPath].choice1
    }

    func getChoice2() -> String {
        return stories[currentStoryPath].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        // current story based on currentStoryPath value
        let currentStory = stories[currentStoryPath]
        
        if userChoice == currentStory.choice1 {
            currentStoryPath = 1
        } else if userChoice == currentStory.choice2 {
            currentStoryPath = 2
        }
    }
}
