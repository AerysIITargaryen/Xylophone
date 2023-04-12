//
//  ViewController.swift
//  Xylophone
//
//  Created by Иван Станкин on 12.04.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
  

    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
        
        sender.alpha = 0.5
        
        let timer = 0.2
        DispatchQueue.main.asyncAfter(deadline: .now() + timer) {
            sender.alpha = 1
        }
        
    }
    
    func playSound(soundName: String) {
        
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
}

