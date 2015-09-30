//
//  ViewController.swift
//  Multiples Exercise
//
//  Created by Neel Bola on 9/26/15.
//  Copyright © 2015 Neel Bola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var userInputAmount = 0
    var calculatedMultiple = 0
    var previousCalculatedMultiple = 0
  
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var multiplesTextField: UITextField!
    
    @IBOutlet weak var multiplesLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onPlayButtonPressed(sender: UIButton) {
        if multiplesTextField.text != nil && multiplesTextField.text != "" {
            playButton.hidden = true
            logoImage.hidden = true
            multiplesTextField.hidden = true
            
            multiplesLabel.hidden = false
            addButton.hidden = false
            
            userInputAmount = Int(multiplesTextField.text!)!
        }
    }
    
    @IBAction func onAddButtonPressed (sender: UIButton) {
            calculatedMultiple = calculatedMultiple + userInputAmount

            updateMultiplesLabel()
    }
    
    func updateMultiplesLabel(){
        multiplesLabel.text = "\(calculatedMultiple - userInputAmount) + \(userInputAmount) = \(calculatedMultiple)"
    }
    

}

