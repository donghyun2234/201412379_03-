//
//  ViewController.swift
//  stopwatch1
//
//  Created by abdul fatah on 10/12/17.
//  Copyright © 2017 FatahKhair. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //declare variable counter
    var counter = 0.0
    //declare timer
    var timer = Timer()
    //declare isPlaying
    var isPlaying = false
    
    @IBOutlet weak var lblTimer: UILabel!
    @IBOutlet weak var lblStart: UIButton!
    @IBOutlet weak var lblPause: UIButton!
    @IBOutlet weak var lblStop: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //menampilkan teks ke lblTimer
        lblTimer.text = String(counter)
        //agar button pause tdk aktif
        lblPause.isEnabled = false
    }
    @IBAction func btnStart(_ sender: Any) {
        //Untuk mengecek apakah sedang play atau tidak.
        if(isPlaying){
            return
        }
        //button start tdk aktif
        lblStart.isEnabled = false
        //button pause aktif
        lblPause.isEnabled = true
        //mengatur timer sebagai schedule timer dengan interval 0.1 dan memanggil updateTimer
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        //mengatur isPlaying nya true
        isPlaying = true
    }
    func updateTimer() {
        counter = counter + 0.1
        lblTimer.text = String(format: "%.1f", counter)
    }
    @IBAction func btnPause(_ sender: Any) {
        //agar button start aktif
        lblStart.isEnabled = true
        //agar button pause tdk aktif
        lblPause.isEnabled = true
        //menampilkan data yg valid
        timer.invalidate()
        //mengatur isPlaying false
        isPlaying = false
        
    }
    @IBAction func btnReset(_ sender: Any) {
        //agar button start aktif
        lblStart.isEnabled = true
        //agar button pause tidak aktif
        lblPause.isEnabled = false
        //menampilkan data yg valid
        timer.invalidate()
       // mengatur isPlaying false
        isPlaying = false
        //mengatur counternya kembali  menjadi 0
        
        counter = 0.0
        //menampilkan timer ke label
        //fungsi dari String(counter) adalah mengubah nilai desimal counter kedalam bentuk string
        lblTimer.text = String(counter)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

