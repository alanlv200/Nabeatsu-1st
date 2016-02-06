//
//  ViewController.swift
//  nabeatsu
//
//  Created by ohtatomotaka on 2015/03/11.
//  Copyright (c) 2015年 ohtatomotaka. All rights reserved.
//

import UIKit
//TODO:コーディング規約を確認

class ViewController: UIViewController {
    var number: Int = 0
    var CheckNum: Int = 0
    @IBOutlet var label: UILabel!
    @IBOutlet var faceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "\(0)"
    }
    func isAho() -> Bool {
        if (number % 3) == 0 {
            return true;
        } else {
            CheckNum = number
            while CheckNum != 0 {
                if CheckNum % 10 == 3 {
                    return true;
                } else {
                    CheckNum = CheckNum / 10
                }
            }
        }
        return false
    }
    
    @IBAction func plusButton() {
        number = number + 1
        label.text = "\(number)"
        if isAho() == true {
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else {
            faceLabel.text = "(゜o゜)"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func clear() {
        number = 0
        label.text = String(number)
    }
}


