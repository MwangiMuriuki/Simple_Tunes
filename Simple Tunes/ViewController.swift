//
//  ViewController.swift
//  Simple Tunes
//
//  Created by ERNEST MURIUKI on 2/19/20.
//  Copyright © 2020 ERNEST MURIUKI. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    let noteArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    var audioPlayer: AVAudioPlayer!
   
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func keyPressed(_ sender: UIButton) {
              
        playSound(soundFilename: noteArray[sender.tag - 1])
        
    }
    
    func playSound(soundFilename: String ){
        
               let soundURL = Bundle.main.url(forResource: soundFilename, withExtension: "wav")
               
               do{
                   audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
               }
               catch{
                   print(error)
               }
               
               audioPlayer.play()
        
    }
    
    
}

