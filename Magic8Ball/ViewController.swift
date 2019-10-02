//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Clayton Adams on 8/7/19.
//  Copyright © 2019 AppsOnTap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        shakeMethod()
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        
        shakeMethod()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        shakeMethod()
    }
    
    func shakeMethod(){
        
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
}

