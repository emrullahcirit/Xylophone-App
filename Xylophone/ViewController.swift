//
//  ViewController.swift
//  Xylophone
//
//  Created by Muhammed Emrullah Cirit on 11.12.2021.
//

import UIKit
import AVFoundation



class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundTitle: sender.currentTitle!)
        UIView.animate(withDuration: 0.4){
            sender.alpha = 0.5
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2 ) {
            UIView.animate(withDuration: 0.4){
                sender.alpha = 1.0
            }
        }
    }
    
    func playSound(soundTitle: String) {
        let url = Bundle.main.url(forResource: soundTitle, withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: url!)
        audioPlayer.play()

    }

}

