//
//  ViewController.swift
//  memoryCalculator
//
//  Created by Hikmet Karimli on 10/31/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var saveResult: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let savedNumber = UserDefaults.standard.object(forKey: "salam")
        if let newNumber = savedNumber as? String{
            saveResult.text = newNumber
        }
            
    }


    @IBAction func savedButton(_ sender: Any) {
        UserDefaults.standard.set(saveResult.text!, forKey: "salam")
        saveResult.text = resultLabel.text
        
    }
    
    
    @IBAction func plus(_ sender: Any) {
        if let myTextfiled1 = Int(num1.text!){
            if let myTextField2 = Int(num2.text!){
                let result = myTextfiled1+myTextField2
                resultLabel.text = String(result)
            }else{
                resultLabel.text = "xetali deyer!"
            }
        }
        
    }
    
    @IBAction func minus(_ sender: Any) {
        if let myTextfiled1 = Int(num1.text!){
            if let myTextField2 = Int(num2.text!){
                let result = myTextfiled1-myTextField2
                resultLabel.text = String(result)
            }else{
                resultLabel.text = "xetali deyer!"
            }
        }
        
    }
    
    @IBAction func division(_ sender: Any) {
        if let myTextfiled1 = Int(num1.text!){
            if let myTextField2 = Int(num2.text!){
                let result = myTextfiled1/myTextField2
                resultLabel.text = String(result)
            }else{
                resultLabel.text = "xetali deyer!"
            }
        }
    }
    @IBAction func multipilication(_ sender: Any) {
        if let myTextfiled1 = Int(num1.text!){
            if let myTextField2 = Int(num2.text!){
                let result = myTextfiled1*myTextField2
                resultLabel.text = String(result)
            }else{
                resultLabel.text = "xetali deyer!"
            }
        }
    }
    
    
}

