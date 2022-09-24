//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
 
    var calculeteBrain = CalculeteBrain()
    var bmiValue = "0.0"
    let a = 3
  
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heighSlederNotChange: UISlider!
    
    @IBOutlet weak var weightSliderNotChange: UISlider!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func hightSlider(_ sender: UISlider) {
        
        
        let height = (String(format:" %.2f", sender.value)) //можно запихнуть в функцию но это не точно
        heightLabel.text = "\(height)m"
        
      
        
    }
    @IBAction func weightSlider(_ sender: UISlider) {
       
        let weight = (String(format:" %.0f", sender.value))
        weightLabel.text = "\(weight)Kg"
        
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
        let weightSliderValue = weightSliderNotChange.value
        let heightSliderValue = heighSlederNotChange.value
        
        calculeteBrain.calculateBMI(height:heightSliderValue, weight:weightSliderValue)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewControlerViewController
            destinationVC.bmiValue = calculeteBrain.getBMIValue()
            destinationVC.advice = calculeteBrain.getAdvice()
            destinationVC.color = calculeteBrain.getColor()
            
            
             
        }
    }
}

