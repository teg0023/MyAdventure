//
//  RoadChoice.swift
//  MyAdventure
//
//  Created by user248010 on 2/6/24.
//

import Foundation

struct RoadChoice   {
    
    var scenario : String
    var choice1 : Int
    var choice2 : Int
    
    init(scenarioIn: String, choice1In: Int, choice2In: Int) {
        scenario = scenarioIn
        choice1 = choice1In
        choice2 = choice2In
    }
}
