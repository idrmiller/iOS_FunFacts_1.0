//
//  ViewController.swift
//  Fun Facts
//
//  Created by David Miller on 3/21/15.
//  Copyright (c) 2015 David Miller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //  This is the target of our action method in @IBAction apart of the (Target - Action)
    
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
  
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // This is the action method that will pass the information to our target method to display on the screen @IBOutlet and aprt of the (Target - Action)
    
    @IBAction func showFunFact() {
        var randomColor = colorWheel.randomColor()
        funFactLabel.text = factBook.randomFact()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        
        
    }

}

