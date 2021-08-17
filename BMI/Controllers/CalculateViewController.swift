//
//  ViewController.swift
//  BMI
//
//  Created by Malinga on 2021-08-17.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLable: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {//set value of of height
        let height = (String(format: "%.2f", sender.value)) //get choosen height value
       heightLable.text = "\(height)m" // assinged a value to dipaly
        
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {// set a value of weight
        let weight = String(Int(sender.value)) //get choosen weight value
       weightLabel.text = "\(weight)Kg" //assinged a value to dipaly
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        // calculation of bmi
            let height = heightSlider.value // assing the height to veriable
            let weight = weightSlider.value // assing the height to veriable
             
            calculatorBrain.calculateBMI(height: height, weight: weight)// calculate bmi
            
            self.performSegue(withIdentifier: "goToResult", sender: self) // peform second screen

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {// this override methode come form 'ResultViewController'
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController  // definitely destination should be 'ResultViewController'
            // 'as' mean definitely
            
            destinationVC.bmiValue = calculatorBrain.getBMIValue() //get value to set bmi
            destinationVC.advice = calculatorBrain.getAdvice() // get string to set as advice
            destinationVC.color = calculatorBrain.getColor() // get color to set bgColor
        }
    }
}

