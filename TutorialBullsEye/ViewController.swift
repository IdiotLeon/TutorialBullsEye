//
//  ViewController.swift
//  TutorialBullsEye
//
//  Created by Yang Lu on 2018-11-02.
//  Copyright © 2018 IdiotLeon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showAlert(){
        let alert = UIAlertController(title: "Hello World!", message: "This is not my 1st iOS app", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func showKnockKnock(){
        let alert = UIAlertController(title: "Knock Knock", message: "Who's there", preferredStyle: .actionSheet)
        
        let action = UIAlertAction(title: "Yes!", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }

}

