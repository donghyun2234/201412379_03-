//
//  ViewController.swift
//  ButtonFun02
//
//  Created by 김종현 on 21/03/2019.
//  Copyright © 2019 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var labelB: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //myLabel.text = "잘 되네 하하!"
        counterLabel.text = String(count)
    }

    @IBAction func buttonPressed(_ sender: Any) {
        
        count = count + 1
        myLabel.text = "잘 되네 하하!"
        if(count==10){
            count = 0;
        }
        counterLabel.text = String(count)
    }
    
    @IBAction func buttonBpressed(_ sender: Any) {
        //myLabel.text = "Button B pressed"
        labelB.text = "Button B pressed!"
    }
}

