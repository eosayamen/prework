//
//  ViewController.swift
//  Pratice
//
//  Created by etiosakay on 7/23/22.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var colorLabel: UIView!
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var TextLabel: UILabel!
    @IBAction func BottonClicked(_ sender: Any) {
        print("hello")
        TextLabel.textColor = UIColor.orange
        
        if counter % 2 == 0 {
            view.backgroundColor = UIColor.green
        
        } else {
            view.backgroundColor = UIColor.blue
        }
        counter += 1
    }
}

