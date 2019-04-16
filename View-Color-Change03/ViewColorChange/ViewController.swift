//
//  ViewController.swift
//  ViewColorChange
//
//  Created by 김종현 on 20/03/2019.
//  Copyright © 2019 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.view.backgroundColor = UIColor.lightGray
    }

    @IBAction func bittonRedPressed(_ sender: Any) {
        //redView.backgroundColor = UIColor.white
//        redView.isHidden = true
        redView.alpha = 0.5
    }
    
    @IBAction func buttonBluePressed(_ sender: Any) {
        //blueView.backgroundColor = UIColor.white
//        blueView.isHidden = true
        blueView.alpha = 0.5
    }
    
    @IBAction func buttonGreenPressed(_ sender: Any) {
        //greenView.backgroundColor = UIColor.white
//        greenView.isHidden = true
        greenView.alpha = 0.5
    }
    
}

