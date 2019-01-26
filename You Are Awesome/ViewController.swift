//
//  ViewController.swift
//  You Are Awesome
//
//  Created by James Steele on 1/12/19.
//  Copyright © 2019 James Steele. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    
    var index = -1
    var imageIndex = -1
    let numberOfImages = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        let messages = ["You Are Fantastic!",
                        "You Are Great!",
                        "You Are Amazing",
                        "When the Genius Bar needs help, they call you",
                        "You brighten my day",
                        "You are da bomb",
                        "Hey, Fabulous!",
                        "You are tremendous!",
                        "You've got the design skills of Jony Ive!",
                        "I can't wait to download your app!"]
       
        var newIndex : Int // declares but doesn't initialize newIndex
        
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
        } while imageIndex == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        repeat {
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
    }

}

