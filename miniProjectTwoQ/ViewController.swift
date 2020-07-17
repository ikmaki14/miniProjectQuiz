//
//  ViewController.swift
//  miniProjectTwoQ
//
//  Created by Isabella Maki on 7/8/20.
//  Copyright © 2020 Isabella Maki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var correct: UILabel!
    @IBOutlet weak var incorrect: UILabel!
    
    var correctCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        correct.isHidden = true
        incorrect.isHidden = true
        correctCount = 0
    }

    @IBAction func redButtonClicked(_ sender: Any) {
        
        correct.isHidden = true
        incorrect.isHidden = false
    }
    
    @IBAction func greenButtonClicked(_ sender: Any) {
        
        correct.isHidden = true
        incorrect.isHidden = false
    }
    
    @IBAction func blueButtonClicked(_ sender: Any) {
        
        incorrect.isHidden = true
        correct.isHidden = false
        correctCount += 1
    }
    
    override func prepare(for segue:UIStoryboardSegue, sender: Any?)
    {
        if (segue.identifier == "toQOne")  {
            if let destVC = segue.destination as? QuestionOneViewController {
                destVC.correctCount2 = correctCount
            }
        }

    }
    
}

