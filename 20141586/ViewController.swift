//
//  ViewController.swift
//  20141586
//
//  Created by Release on 25/03/2019.
//  Copyright © 2019 joonhee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func doButtontap(_ sender: UIButton) {
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doButtonTap(_ sender: UIButton) {
        
        print("Button touched")
        self.messageLabel.text = "Hello World"
    }
    
    
}

