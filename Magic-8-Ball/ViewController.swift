//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Xcode User on 2018-02-10.
//  Copyright © 2018 Navpreet Kaur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView1: UIImageView!
    var ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomNumber : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageChange()
    }
    @IBAction func askButtonPressed(_ sender: Any) {
        imageChange()
    }
    
    func imageChange()
    {
        randomNumber = Int(arc4random_uniform(4))
        imageView1.image = UIImage(named : ballArray[randomNumber])
    
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        imageChange()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

