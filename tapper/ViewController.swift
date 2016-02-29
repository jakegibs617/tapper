//
//  ViewController.swift
//  tapper
//
//  Created by Jacob K Giberson on 2/28/16.
//  Copyright © 2016 Jacob K Giberson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //properties
    
    var maxTaps = 0
    var currentTaps = 0

    //outlets
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var howManyTaps: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapLabel: UILabel!
 
    
    //actions
    @IBAction func onCoinTap(sender: UIButton!){
        currentTaps++;
        updateTapsLabel()
        
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction func onPlayButtonPress(sender: UIButton!){

        if howManyTaps.text != nil && howManyTaps.text != "" {
            logoImageView.hidden = true
            playButton.hidden = true
            howManyTaps.hidden = true
            
            tapButton.hidden = false
            tapLabel.hidden = false
            
            maxTaps = Int(howManyTaps.text!)!
            currentTaps = 0
            
            updateTapsLabel()
        }
    }
    
    //functions
    func restartGame () {
        maxTaps = 0
        howManyTaps.text = ""
        logoImageView.hidden = false
        playButton.hidden = false
        howManyTaps.hidden = false
        
        tapButton.hidden = true
        tapLabel.hidden = true
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        } else {
            return false
        }
    }
    
    func updateTapsLabel(){
        tapLabel.text = "\(currentTaps) Taps"
    }
}

