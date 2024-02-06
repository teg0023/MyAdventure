//
//  ViewController.swift
//  MyAdventure
//
//  Created by user248010 on 2/5/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var EndGameLabel: UILabel!
    @IBOutlet weak var ScenarioLabel: UILabel!
    
    
    @IBOutlet weak var Choice2BTN: UIButton!
    @IBOutlet weak var Choice1BTN: UIButton!
    
    var roadProblem = RoadChoiceLogic()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ScenarioLabel.text = roadProblem.getScenario()
        EndGameLabel.text = ""
        Choice1BTN.setTitle("Road \(roadProblem.getChoice1())", for: .normal)
        Choice2BTN.setTitle("Road \(roadProblem.getChoice2())", for: .normal)
    }


    @IBAction func userAnswer(_ sender: UIButton) {
        if (sender.title(for: .normal) == "Road \(roadProblem.getChoice1())")
        {
            EndGameLabel.text = roadProblem.setIndex(indexIn: roadProblem.getChoice1())
            ScenarioLabel.text = roadProblem.getScenario()
            Choice1BTN.setTitle("Road \(roadProblem.getChoice1())", for: .normal)
            Choice2BTN.setTitle("Road \(roadProblem.getChoice2())", for: .normal)
        }
        else
        {
            EndGameLabel.text = roadProblem.setIndex(indexIn: roadProblem.getChoice2())
            ScenarioLabel.text = roadProblem.getScenario()
            Choice1BTN.setTitle("Road \(roadProblem.getChoice1())", for: .normal)
            Choice2BTN.setTitle("Road \(roadProblem.getChoice2())", for: .normal)
        }
        
    }
}

