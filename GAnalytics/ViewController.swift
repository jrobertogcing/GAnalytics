//
//  ViewController.swift
//  GAnalytics
//
//  Created by Jose González on 3/8/19.
//  Copyright © 2019 gonet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numeroLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func numeroButtonAction(_ sender: Any) {
        
        let number = Int.random(in: 0 ... 1000)
        numeroLabel.text = String(number)
    }
    

}

