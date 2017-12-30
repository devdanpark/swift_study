//
//  ViewController.swift
//  Calculator
//
//  Created by Seonghun Park on 2017. 11. 25..
//  Copyright © 2017년 Seonghun Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var laNumberShow: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func AddNumberToInput(number:String){
        var textNumber = String(laNumberShow.text!)
        textNumber = textNumber! + number
        laNumberShow.text = textNumber!
}
    @IBAction func Bu0(_sender: Any) {
        AddNumberToInput(number:"0")
    }
    @IBAction func Bu1(_ sender: Any) {
        AddNumberToInput(number:"1")

    }
    @IBAction func Bu2(_ sender: Any) {
        AddNumberToInput(number: "2")

    }
    @IBAction func Bu3(_ sender: Any) {
        AddNumberToInput(number: "3")

    }
    @IBAction func Bu4(_ sender: Any) {
        AddNumberToInput(number: "4")

    }
    @IBAction func Bu5(_ sender: Any) {
        AddNumberToInput(number: "5")

    }
    @IBAction func Bu6(_ sender: Any) {
        AddNumberToInput(number: "6")

    }
    @IBAction func Bu7(_ sender: Any) {
        AddNumberToInput(number: "7")

    }
    @IBAction func Bu8(_ sender: Any) {
        AddNumberToInput(number: "8")

    }
    @IBAction func Bu9(_ sender: Any) {
        AddNumberToInput(number: "9")

    }
    @IBAction func BuDot(_ sender: Any) {
        AddNumberToInput(number: ".")

    }
    
}



