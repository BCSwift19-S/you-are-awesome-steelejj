//
//  ViewController.swift
//  You Are Awesome
//
//  Created by James Steele on 1/12/19.
//  Copyright © 2019 James Steele. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    
    var awesomePlayer = AVAudioPlayer()
    
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    
    let numberOfImages = 10
    let numberOfSounds = 4
    
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
        
        // show a message
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
        } while imageIndex == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        // show an image
        repeat {
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        // play a sound
        repeat {
            newIndex = Int.random(in: 0..<numberOfSounds)
        } while soundIndex == newIndex
        
        soundIndex = newIndex
        
        var soundName = "sound\(soundIndex)"
        
        if let sound = NSDataAsset(name: soundName) {
        // chgeck if sound.data is a sound file
            do {
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                print("error, /(soundname) could'nt be played")
            }
        } else {
            print("Error, /(soundname) doesn't exist")
        }
    }

}

