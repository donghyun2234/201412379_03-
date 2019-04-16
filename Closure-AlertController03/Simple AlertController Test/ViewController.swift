//
//  ViewController.swift
//  Simple AlertController Test
//
//  Created by amadeus on 11/04/2019.
//  Copyright © 2019 DIT Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let myAlertAction = UIAlertAction(title: "ttt", style: .default, handler: nil)
        
        let callActionHandler = { (action:UIAlertAction) -> Void in
            let alertMessage = UIAlertController(title: "Service Unavailable", message: "Sorry, the call feature is not available yet", preferredStyle: .alert)
            alertMessage.addAction(myAlertAction)
            self.present(alertMessage, animated: true, completion: nil)
            
        }

        callActionHandler(myAlertAction)
    }


}

