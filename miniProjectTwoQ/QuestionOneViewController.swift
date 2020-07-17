//
//  QuestionOneViewController.swift
//  miniProjectTwoQ
//
//  Created by Isabella Maki on 7/8/20.
//  Copyright © 2020 Isabella Maki. All rights reserved.
//

import UIKit

class QuestionOneViewController: UIViewController {

    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    var correctCount2 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        answer.isHidden = true
        nextButton.isHidden = true
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            answer.text = "INCORRECT"
            answer.isHidden = false
            nextButton.isHidden = false
        } else if sender.tag == 2 {
            answer.text = "CORRECT"
            answer.isHidden = false
            nextButton.isHidden = false
            correctCount2 += 1
        } else if sender.tag == 3 {
            answer.text = "INCORRECT!"
            answer.isHidden = false
            nextButton.isHidden = false
        }
    }
    
    override func prepare(for segue:UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toQTwo")  {
            if let destVC = segue.destination as? QuestionTwoViewController {
                destVC.correctCount3 = correctCount2
            }
        }
    }
}
