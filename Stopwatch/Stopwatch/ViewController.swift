//
//  ViewController.swift
//  Stopwatch
//
//  Created by Andrei Cozma on 6/3/20.
//  Copyright © 2020 Andrei Cozma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lapBtn: UIButton!
    @IBOutlet var startBtn: UIButton!
    
    @IBOutlet var timeLabel: UILabel!
    
    var timer = Timer()
    var isRunning = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var currTime:Double = 0.00
    
    @IBAction func startBtnClick(_ sender: UIButton) {
        print("Clicked Start: isRunning = ", terminator:" ")
        
        isRunning = !isRunning
        
        if(isRunning){
            print("true")
            sender.setTitle("Pause", for: [])
            lapBtn.setTitle("Lap", for: [])
            lapBtn.isEnabled = true
            

            timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: {(block) in
                self.currTime += 0.01
                self.timeLabel.text = String(self.timeToString(  t: self.currTime))
            })
        }else{
            print("false")
            timer.invalidate()
            sender.setTitle("Resume", for: [])
            lapBtn.setTitle("Reset", for: [])
            lapBtn.isEnabled = true
        }
       
    }
    
    @IBAction func lapBtnClick(_ sender: Any) {
        if(!isRunning){
            lapBtn.isEnabled = false
            lapBtn.setTitle("Lap", for: [])
            startBtn.setTitle("Start", for: [])
            currTime = 0.0
            self.timeLabel.text = String(self.timeToString(  t: self.currTime))
            
        }
    }
    
    
    func timeToString( t: Double) -> String {
        let ms = Int((t*100).rounded(.down)) % 100
        let s  = Int(t.rounded(.down)) % 60
        let m  = Int(t / 60.rounded(.down))
        let h  = Int(t / 3600.rounded(.down))
        
        let millsec = String(format: "%02d", ms)
        let sec = String(format: "%02d", s)
        let min = String(format: "%02d", m)
        let hr = String(format: "%02d", h)

            
        return "\(hr):\(min):\(sec):\(millsec)"
    }
    }

