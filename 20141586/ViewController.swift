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
    
    let messageArray = ["May the force be with you","Live long and prosper","To infinity and beyond","Space is big. You just won't believe how vastly, hugely, mindbogglinly big it is",10] as [Any]
    
    var index=0
    
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
        if let nextString = self.messageArray[index] as? String {
        self.messageLabel.text = nextString
        }
        index = index + 1
        index %=  self.messageArray.count
    }
    
    
}

