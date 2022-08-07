//
//  ViewController.swift
//  Pratice
//
//  Created by etiosakay on 7/23/22.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var textFiled: UITextField!
    @IBOutlet weak var colorLabel: UIView!
    @IBOutlet weak var colorlabel: UILabel!
    @IBOutlet weak var colorlabel1: UILabel!
    @IBOutlet weak var TextLabel: UILabel!
    @IBOutlet weak var submit: UIButton!
    var result : String!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TextLabel.text = ""
        // Do any additional setup after loading the view.
        //self.textFiled.delegate = self
        submit.setTitle("Botton", for: UIControl.State.normal)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return (true)
    }
    
    
    @IBAction func submitaction(_ sender: Any) {
        result = textFiled.text!
        TextLabel.text = "\(result!)"
    }
    @IBAction func BottonClicked(_ sender: Any) {
        
        print("hello")
        TextLabel.textColor = UIColor.orange
        colorlabel.textColor = UIColor.orange
        
          
        if counter % 2 == 0 {
            view.backgroundColor = UIColor.green
            
        
        } else {
            view.backgroundColor = UIColor.blue
            
        }
        counter += 1
    }
}

