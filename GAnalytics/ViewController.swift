//
//  ViewController.swift
//  GAnalytics
//
//  Created by Jose González on 3/8/19.
//  Copyright © 2019 gonet. All rights reserved.
//

import UIKit
import Firebase
import Crashlytics


class ViewController: UIViewController {

    @IBOutlet weak var numeroLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func numeroButtonAction(_ sender: Any) {
        
        let number = Int.random(in: 0 ... 11)
        numeroLabel.text = String(number)
        
        //Firebas Analytics
        Analytics.logEvent("Botón de número Random", parameters: ["Botón": "uno", "número": number])
        
       
        // Si el valor es igual a 11 crash
        if number == 11 {
        Crashlytics.sharedInstance().setIntValue(11, forKey: "Se dio el número 11")
        }
    }
    
    
    @IBAction func crashButtonAction(_ sender: UIButton) {
    
        // Se fuerza crash para prueba Charshlytics
        Crashlytics.sharedInstance().crash()
        
    }
    

}

