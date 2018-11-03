//
//  ViewController.swift
//  TutorialBullsEye
//
//  Created by Yang Lu on 2018-11-02.
//  Copyright © 2018 IdiotLeon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 0
    var targetValue: Int = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let roundedValue  = slider.value.rounded()
        currentValue = Int(roundedValue)
        startNewRound()
    }

    @IBAction func showAlert(){
        
        let message = "The value of the slider is now: \(currentValue)"
        
        let alert = UIAlertController(title: "Hello World!", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
    }
    
    @IBAction func sliderMoved(_ slider: UISlider){
        print("The value of the slider is now: \(slider.value)")
        let roundedValue = slider.value.rounded()
        print("The rounded value of the slider is now: \(roundedValue)")
        currentValue = Int(roundedValue)
    }
    
    func startNewRound(){
        targetValue = Int.random(in: 1...100)
        targetLabel.text = String(targetValue)
        currentValue = 50
        slider.value = Float(currentValue)
        
        let diff = abs(targetValue - Int(slider.value.rounded()))
    }
}

