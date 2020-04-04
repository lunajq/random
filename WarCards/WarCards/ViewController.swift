//
//  ViewController.swift
//  WarCards
//
//  Created by luna JiangQin on 1/21/20.
//  Copyright © 2020 luna JiangQin. All rights reserved.
//

//all the objects used in storyboard layout are objects of the button/imageview/etc class, size inspector properties are ways to set the object properties
import UIKit //use library provided by Apple

class ViewController: UIViewController { //subclassing: classes build off each other - this says viewcontroller builds off bigger class UIViewController which is part of UIKit

    
    @IBOutlet weak var leftImageView: UIImageView! //iboutlet lets you know it's from storyboard. if u make a typo naming this object, don't just rename in here. reconnect the object here or u will have problems
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // leftImageView.image is the same thing as changing image in storyboard
        
    }

   
    @IBAction func dealTapped(_ sender: Any) { //function attached to a user interaction triggered by tapping
        
        //randomize numbers
        let leftNumber = Int.random(in: 2...14) //inclusive range
        let rightNumber = Int.random(in: 2...14)
        
        //update image views
        leftImageView.image = UIImage(named: "card\(leftNumber)") //wants a UIImage object, not ImageView
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        //compare the random numbers
        if leftNumber > rightNumber {
            
            //Left side wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore) //converts int datatype to string
        }
        
        else if leftNumber < rightNumber {
            
            //Right side wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        
        else {
            
            //tie
        }
    }
    

}

