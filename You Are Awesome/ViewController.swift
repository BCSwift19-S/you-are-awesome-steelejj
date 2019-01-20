//
//  ViewController.swift
//  You Are Awesome
//
//  Created by James Steele on 1/12/19.
//  Copyright © 2019 James Steele. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func myMessagePressed(_ sender: UIButton) {
        myMessage.text = "You Are Awesome!"
    }
    @IBAction func showAnotherMessagePressed(_ sender: UIButton) {
        myMessage.text = "You Are Great!"
    }
    
}

