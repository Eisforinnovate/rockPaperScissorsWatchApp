//
//  InterfaceController.swift
//  Apple Watch App WatchKit Extension
//
//  Created by Eric Dolan on 15/12/2014.
//  Copyright (c) 2015 Neutun Labs. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    @IBOutlet var watchChoice: WKInterfaceImage!
    
    @IBOutlet var resultLabel: WKInterfaceLabel!
    
    var options = ["rock.png", "paper.png", "scissors.png"]
    
    func chooseWinner(userChoice:Int) {
        
        var randomNumber = Int(arc4random_uniform(3))
        
        watchChoice.setImageNamed(options[randomNumber])
        
        if (randomNumber == 0 && userChoice == 1) || (randomNumber == 1 && userChoice == 2) || (randomNumber == 2 && userChoice == 0) {
            
            resultLabel.setText("You Win!")
            
            
        } else if (userChoice == 0 && randomNumber == 1) || (userChoice == 1 && randomNumber == 2) || (userChoice == 2 && randomNumber == 0) {
            
            resultLabel.setText("I Win!")
            
            
        } else {
            
            resultLabel.setText("It's A Draw!")
            
        }
        
    }
    
    @IBAction func rockChosen() {
        
        chooseWinner(0)
        
    }
    
    @IBAction func paperChosen() {
        
        chooseWinner(1)
        
    }
    
    @IBAction func scissorsChosen() {
        
        chooseWinner(2)
        
    }
    
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
}
