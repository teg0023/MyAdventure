//
//  RoadChoiceLogic.swift
//  MyAdventure
//
//  Created by user248010 on 2/6/24.
//

import Foundation

struct RoadChoiceLogic  {
    var index : Int = 0
    
    let roadChoices = [RoadChoice(scenarioIn: "You are driving the highway but there is heavy traffic ahead! Choose an alternate road.",
                                  choice1In: 1,
                                  choice2In: 2),
                       RoadChoice(scenarioIn: "You drove around the traffic to get back to the highway. Choose a road.",
                                  choice1In: 3,
                                  choice2In: 4),
                       RoadChoice(scenarioIn: "You drove around the traffic to get back to the highway. Choose a road.",
                                  choice1In: 5,
                                  choice2In: 6),
                       RoadChoice(scenarioIn: "Choose a road to get back to the highway (assuming to keep straight through intersections.",
                                  choice1In: 7,
                                  choice2In: 8),
                       RoadChoice(scenarioIn: "Choose a road to get back to the highway (assuming to keep straight through intersections.",
                                  choice1In: 9,
                                  choice2In: 10),
                       RoadChoice(scenarioIn: "Choose a road to get back to the highway (assuming to keep straight through intersections.",
                                  choice1In: 11,
                                  choice2In: 12),
                       RoadChoice(scenarioIn: "Choose a road to get back to the highway (assuming to keep straight through intersections.",
                                  choice1In: 13,
                                  choice2In: 14)]
    
    func getScenario() -> String {
        return roadChoices[index].scenario
    }
    
    func getChoice1() -> Int {
        return roadChoices[index].choice1
    }
    
    
    func getChoice2() -> Int {
        return roadChoices[index].choice2
    }

    mutating func setIndex(indexIn: Int) -> String  {
        var endGameString = ""
        if (indexIn < roadChoices.count)
        {
            index = indexIn
        }
        else
        {
            index = 0
        }
        
        if (indexIn == 8 || indexIn == 10 || indexIn == 11 || indexIn == 13)
        {
            endGameString = "Well Done! You passed the traffic and drove back into the highway!"
        }
        else if (indexIn >= roadChoices.count)
        {
            endGameString = "Failed. You drove away from the highway."
        }
        return endGameString
    }

                                  
                                  
}
