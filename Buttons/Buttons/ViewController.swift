//
//  ViewController.swift
//  Buttons
//
//  Created by Andrei Cozma on 6/3/20.
//  Copyright © 2020 Andrei Cozma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var msgLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func defaultBtnClick(_ sender: Any) {
        setText(text: "Default Btn")
    }
    
    @IBAction func stateSelectedBtnClick(_ sender: Any) {
        setText(text: "Selected Btn")
    }
    
    @IBAction func stateDisabledBtnClick(_ sender: Any) {
        setText(text: "Disabled Btn")
    }
    
    @IBAction func stateHighlightedBtnClick(_ sender: Any) {
        setText(text: "Highlighted Btn")
    }
    
    @IBAction func pushBtnClick(_ sender: Any) {
        setText(text: "PUSH BTN!!")
    }
    
    func setText(text: String){
        msgLabel.text = "Clicked \(text)"
    }
}

