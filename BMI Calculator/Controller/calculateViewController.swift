//
//  ViewController.swift
//  BMI Calculator
//
//  Created by ABDUL WASAY on 19/10/2024.
//
//

import UIKit

class calculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
      
        let value = sender.value
        let height = String(format: "%.1f", value)
        heightLabel.text = "\(height) m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let value = sender.value
        let weight = String(format: "%.1f", value)
        weightLabel.text = "\(weight) Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let weight = weightSlider.value
        let height = heightSlider.value
        
        calculatorBrain.calculateBMI(weight : weight, height : height)
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier ==  "goToResult"
        {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
   
}

// segue.destination refers to the viewcontroller of the identifier with gotoresult which is resultviewcontroller
// as! ResultViewController is used to refer the sub class whereas the mother class of the uikit is uiviewcontroller when tap on destinationVC with button option it shows the following destinationVC: UIViewController and destinationVC datatype is also uiviewcontroller

