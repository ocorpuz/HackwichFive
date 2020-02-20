//
//  ViewController.swift
//  HackwichFive
//
//  Created by CM Student on 2/20/20.
//  Copyright © 2020 Oliver Corpuz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var CurrentIndex = 0
    var FavoriteFoods = [" Adobo", " Sushi", " Curry", " Pizza", "Pasta"]
    
    @IBOutlet weak var topLabel: UILabel!
    
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.topLabel.text = "My favorite Foods"
        // Do any additional setup after loading the view, typically from a nib.
   
    }

    @IBAction func buttonPressed(_ sender: Any)
    {
        self.bottomLabel.text = FavoriteFoods[CurrentIndex]
    }
    
}

