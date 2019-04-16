//
//  ViewController.swift
//  Counter03
//
//  Created by 김종현 on 21/03/2019.
//  Copyright © 2019 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var alienImageView: UIImageView!
    var count = 0
    var direction = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        countLabel.text = "0"
        alienImageView.image = UIImage(named: "Image0")
    }

    @IBAction func buttonPressed(_ sender: Any) {
        
        if count == 4 {
            direction = false
        } else if count == 0 {
            direction = true
        }
        
        //direction이 true이면 count를 1씩 증가,
        //direction이 false이면 count를 1씩 감소
        if direction == true {
            count += 1
        } else if direction == false {
            count -= 1
        }
        
        countLabel.text = String(count)
        alienImageView.image = UIImage(named: "Image\(count)")
    }
    
}

