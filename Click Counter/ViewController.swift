//
//  ViewController.swift
//  Click Counter
//
//  Created by Garcia, Samuel on 28/10/15.
//  Copyright © 2015 SamuGar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Label
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
        
        //button
        var buttonInc = UIButton()
        buttonInc.frame = CGRectMake(150, 250, 60, 60)
        buttonInc.setTitle("More", forState: .Normal)
        buttonInc.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(buttonInc)
        buttonInc.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        //button
        var buttonDec = UIButton()
        buttonDec.frame = CGRectMake(150, 300, 60, 60)
        buttonDec.setTitle("Less", forState: .Normal)
        buttonDec.setTitleColor(UIColor.redColor(), forState: .Normal)
        self.view.addSubview(buttonDec)
        buttonDec.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        //buttonBack
        var buttonBack = UIButton()
        buttonBack.frame = CGRectMake(150, 350, 60, 60)
        buttonBack.setTitle("Click", forState: .Normal)
        buttonBack.setTitleColor(UIColor.greenColor(), forState: .Normal)
        self.view.addSubview(buttonBack)
        buttonBack.addTarget(self, action: "changeBack", forControlEvents: UIControlEvents.TouchUpInside)
    }
    

    func incrementCount(){
        self.count++
        self.label.text = "\(self.count)"
    }
    
    func decrementCount(){
        self.count--
        self.label.text = "\(self.count)"
    }
    
    func changeBack(){
        self.view.backgroundColor = UIColor.yellowColor()
    }
    
}

