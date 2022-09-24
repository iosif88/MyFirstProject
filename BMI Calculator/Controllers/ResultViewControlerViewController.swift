//
//  ResultViewControlerViewController.swift
//  BMI Calculator
//
//  Created by Iosif Dubikovski on 5/4/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewControlerViewController: UIViewController {
    let calculateBrain = CalculeteBrain()
    var bmiValue: String?
    var advice:String?
    var color: UIColor?
    
    
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
     

        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        
        
    }
    

    @IBAction func recalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true)
       
    }
  
    
 
}
