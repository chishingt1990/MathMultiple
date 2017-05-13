//
//  ViewController.swift
//  7.AnotherStupidExercise
//
//  Created by Shuang Wu on 13/05/2017.
//  Copyright © 2017 Shuang Wu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var multipleField: UITextField!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var newMultiple: UILabel!
    @IBOutlet weak var OriginalMultiple: UILabel!
    @IBOutlet weak var OldMultiple: UILabel!
    @IBOutlet weak var Sign: UILabel!
    
    var multiple: Int = 0
    var temporarysum: Int = 0
    
    @IBAction func playGame(_ sender:UIButton) {
    if multipleField.text != "" && Int(multipleField.text!)! >= 1 {
            hide()
            multiple = Int(multipleField.text!)!
            OriginalMultiple.text! = String(multiple)
            newMultiple.text! = "0"
            OldMultiple.text! = "0"
        }
    }

    @IBAction func addMultiple(_ sender:UIButton) {
        OldMultiple.text! = showText(numb:multiple)
        multiple += Int(OriginalMultiple.text!)!
        newMultiple.text! = showText(numb:multiple)
    }

    @IBAction func reset (_ sender:UIButton){
        unhide()
    }
    
    func showText(numb:Int) -> String{
        return "\(numb)"
    }
    
    func hide(){
        addButton.isHidden = false
        playButton.isHidden = true
        multipleField.isHidden = true
        newMultiple.isHidden = false
        OldMultiple.isHidden = false
        OriginalMultiple.isHidden = false
        resetButton.isHidden = false
        Sign.isHidden = false
    }
    func unhide(){
        addButton.isHidden = true
        playButton.isHidden = false
        multipleField.isHidden = false
        newMultiple.isHidden = true
        OldMultiple.isHidden = true
        OriginalMultiple.isHidden = true
        resetButton.isHidden = true
        Sign.isHidden = true
    }
}

