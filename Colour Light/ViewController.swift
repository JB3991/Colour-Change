//
//  ViewController.swift
//  Light
//
//  Created by Jonathan Burnett on 18/11/2020.
//

import UIKit

var lightOn = true


class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }

    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }
    
    func updateUI() {
        
        button.setTitle("Press Here", for: .normal)
        
        if lightOn {
            view.backgroundColor = UIColor.getRandomColor()
            _ = view.backgroundColor
            button.tintColor = UIColor.getRandomColor()

        } else {
            view.backgroundColor = UIColor.getRandomColor()
            _ = view.backgroundColor
            button.tintColor = UIColor.getRandomColor()
        }
        
        if view.backgroundColor == button.tintColor {
            button.tintColor = UIColor.darkGray
        }
    }
}
    
    extension UIColor {
        
        class func getRandomColor() -> UIColor {
            let colors = [UIColor.red, UIColor.green, UIColor.blue, UIColor.white, UIColor.orange, UIColor.black, UIColor.purple, UIColor.yellow, UIColor.brown, UIColor.cyan]
            let randomNumber = arc4random_uniform(UInt32(colors.count))
            
            return colors[Int(randomNumber)]
        }
    }

