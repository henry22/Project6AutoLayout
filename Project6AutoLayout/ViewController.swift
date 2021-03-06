//
//  ViewController.swift
//  Project6AutoLayout
//
//  Created by Henry on 5/17/15.
//  Copyright (c) 2015 Henry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label1 = UILabel()
        label1.setTranslatesAutoresizingMaskIntoConstraints(false)
        label1.backgroundColor = UIColor.redColor()
        label1.text = "THESE"
        
        let label2 = UILabel()
        label2.setTranslatesAutoresizingMaskIntoConstraints(false)
        label2.backgroundColor = UIColor.cyanColor()
        label2.text = "ARE"
        
        let label3 = UILabel()
        label3.setTranslatesAutoresizingMaskIntoConstraints(false)
        label3.backgroundColor = UIColor.yellowColor()
        label3.text = "SOME"
        
        let label4 = UILabel()
        label4.setTranslatesAutoresizingMaskIntoConstraints(false)
        label4.backgroundColor = UIColor.greenColor()
        label4.text = "AWESOME"
        
        let label5 = UILabel()
        label5.setTranslatesAutoresizingMaskIntoConstraints(false)
        label5.backgroundColor = UIColor.orangeColor()
        label5.text = "LABELS"
        
        //All five views added to the view belonging to view controller
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        
        let viewsDictionary = ["label1":label1, "label2":label2, "label3":label3, "label4":label4, "label5":label5]
        
        for label in viewsDictionary.keys {
            view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[\(label)]|", options: .allZeros, metrics: nil, views: viewsDictionary))
        }
        
        let metrics = ["labelHeight": 88]
        //If vertical VFL doesn't have a pipe at the end,means we're not forcing the last label to stretch all the way to the edge of our view.The - symbol, which means "space". It's 10 points by default
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[label1(labelHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-[label5(label1)]-(>=10)-|", options: .allZeros, metrics: metrics, views: viewsDictionary))
    }
    
    //Don't want to show the iOS status bar on this view controller
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

