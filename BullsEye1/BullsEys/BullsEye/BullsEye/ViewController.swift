//
//  ViewController.swift
//  BullsEye
//
//  Created by Release on 28/03/2019.
//  Copyright © 2019 joonhee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue: Int = 50
    var targetValue = 0
    var score=0
    var round=0
    
    @IBOutlet weak var targetLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        startNewGame()
    }
    
    @IBAction func showAlert(){
        
        /* Score Setting */
        let difference = abs(targetValue - currentValue)
        
        /* For various points */
        var points = 100 - difference
        let title: String
        if difference == 0 {
            title = "Perfect!"
            points += 100
        } else if difference < 5 {
            title = "You almost had it!"
            if difference == 1 {
                points += 50
            }
        } else if difference < 10 {
            title = "Pretty good!"
        } else {
            title = "Not even close..."
        }
        
        score += points
        
        let message = "You scored \(points) points"
        
        //let message = "The value of the slider is: \(currentValue)" + "\nThe target value is: \(targetValue)"
        
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        /* For Closure */
        let action = UIAlertAction(title: "O.K", style: .default,
                                   handler: { _ in
                                    self.startNewRound()
        })
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        //startNewRound()
        
    }
   
    
    @IBAction func slidermove(_ sender: UISlider) {
        currentValue = lroundf(slider.value)
        print(" The value of the slider is now:\(currentValue)")
    }
    
    @IBAction func startNewGame() {
        score = 0
        round = 0
        currentValue = 50
        targetValue = 0
        startNewRound()
    }
    
    func startNewRound() {
        round += 1
        targetValue = Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    func updateLabels() {
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }


}

