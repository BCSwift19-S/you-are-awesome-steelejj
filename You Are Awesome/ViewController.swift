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
    }

    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) ->Int {
        var newIndex : Int
        repeat {
            newIndex = Int.random(in: 0..<maxValue)
        } while lastNumber == newIndex
        return newIndex
    }
    
    func playSound(soundName: String) {
  
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

        
        // show a message
        
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        // show an image
        
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        // get random sound, not repeating        
        soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
       
        let soundName = "sound\(soundIndex)"
        playSound(soundName: soundName)
    }

}

