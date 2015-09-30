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

  
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var multiplesTextField: UITextField!
    
    @IBOutlet weak var multiplesLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    
    
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
            resetButton.hidden = false
            
            userInputAmount = Int(multiplesTextField.text!)!
        }
    }
    
    @IBAction func onAddButtonPressed (sender: UIButton) {
            calculatedMultiple = calculatedMultiple + userInputAmount

            updateMultiplesLabel()
    }
    
    @IBAction func resetButtonPressed(sender: UIButton) {
        resetGame()
    }
    
    
    
    func updateMultiplesLabel(){
        multiplesLabel.text = "\(calculatedMultiple - userInputAmount) + \(userInputAmount) = \(calculatedMultiple)"
    }
    
    func resetGame(){
        userInputAmount = 0
        calculatedMultiple = 0
        multiplesLabel.text = "Press Add to add!"
        
        playButton.hidden = false
        logoImage.hidden = false
        multiplesTextField.hidden = false
        
        multiplesTextField.text = ""
        multiplesLabel.hidden = true
        addButton.hidden = true
        resetButton.hidden = true

    }
    
}

