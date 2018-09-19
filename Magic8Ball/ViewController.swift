//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Filip on 19.09.2018.
//  Copyright © 2018 Filip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    @IBOutlet weak var askButtonView: UIButton!
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        askButtonView.layer.cornerRadius = 8
        askButtonView.layer.masksToBounds = true
    }


    @IBAction func askButton(_ sender: Any) {
        
        rollAnswer()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        rollAnswer()
        
    }
    
    func rollAnswer(){
        
        let answer = Int.random(in: 0 ... 4)
        print(ballArray[answer])
        
        ballImage.image = UIImage(named: ballArray[answer])
        
    }
    
    
}

