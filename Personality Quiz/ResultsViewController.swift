//
//  ResultsViewController.swift
//  Personality Quiz
//
//  Created by Denis Zubkov on 06/09/2018.
//  Copyright © 2018 Denis Zubkov. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var responses: [Answer]!
    
    @IBOutlet weak var resultAnswerLabel: UILabel!
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
        calculatePersonlityResult()
        // Do any additional setup after loading the view.
    }
    
    func calculatePersonlityResult() {
        var frequencyOfAnswers: [AnimalType: Int] = [:]
        let responseTypes = responses.map { $0.type }
        
        
        for response in responseTypes {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        
        //        let frequentAnswersSorted = frequencyOfAnswers.sorted { (pair1, pair2) -> Bool in
        //            return pair1.value > pair2.value
        //        }
        //
        //        let mostCommontAnswer = frequentAnswersSorted.first!.key
        
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        
        resultAnswerLabel.text = "Вы — это \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
        
    }
}
