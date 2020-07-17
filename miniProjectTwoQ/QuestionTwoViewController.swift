//
//  QuestionTwoViewController.swift
//  miniProjectTwoQ
//
//  Created by Isabella Maki on 7/8/20.
//  Copyright © 2020 Isabella Maki. All rights reserved.
//

import UIKit

class QuestionTwoViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    
    var correctCount3 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        result.text = String(correctCount3)
    }
}
