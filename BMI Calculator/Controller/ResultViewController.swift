//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by ABDUL WASAY on 19/10/2024.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue : String?
    var advice : String?
    var color : UIColor?

    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
//        adviceLabel.text = bmiAdvice
    }
    
    @IBAction func recalculateBmi(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
   

}

