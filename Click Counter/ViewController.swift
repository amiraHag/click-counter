//
//  ViewController.swift
//  Click Counter
//
//  Created by Amira on 6/24/18.
//  Copyright © 2018 com.placeholder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Variables definition
    var count = 0
    var label :UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // ********** Label ***********
        //Allocate and Initialize the label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        
        //set the global label var to be equal the local label
        self.label = label
        
        //Add the label to the view hierarchy
        view.addSubview(label)
        
        // ********** Button ***********
        //Allocate and Initialize the Button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        
        //Add Button to view hierarchy
        view.addSubview(button)
        
        //Add the target action to the button
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
    }

    @objc func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

