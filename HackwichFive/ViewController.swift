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
    
    
    @IBOutlet weak var ButtonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.topLabel.text = "My favorite Foods"
        // Do any additional setup after loading the view, typically from a nib.
   
    }
//Created IBAction for ButtonPressed
    @IBAction func buttonPressed(_ sender: Any)
//In code change "bottomLabel" to names the first item in "FavoriteFoods"
    {
        
        self.bottomLabel.text = FavoriteFoods[CurrentIndex]
//Create an if/else statement to let bottomLabel change names in favorite food array.
        if self.CurrentIndex < self.FavoriteFoods.count
        {
//Current Index +- is to access the next item in FavoriteFoods
            CurrentIndex += 1
//Change the ButtonPressed label to say "Next" when the button is pressed again
            ButtonLabel.setTitle("Next", for: UIControl.State.normal)
        }
//Set to disable the buttonPressed once we run through the entire array
        else
        {
            (sender as! UIButton).isEnabled = false
            
        }
    }
    
}

