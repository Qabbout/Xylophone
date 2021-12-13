//
//  ViewController.swift
//  Xylophone
//
//  Created by Abdulrahman on 12/13/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundName: sender.titleLabel!.text!)
    }
    
    func playSound(soundName: String){
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav", subdirectory: "Sounds")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

