//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
 
    var audioplayer : AVAudioPlayer!
     var selectedSoundFileNmae : String = ""
    let soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
         selectedSoundFileNmae  = soundArray[sender.tag - 1]
        print(selectedSoundFileNmae)
       
        playSound()
        
    }
    
    func playSound() {
        
        let soundurl = Bundle.main.url(forResource: selectedSoundFileNmae, withExtension: "wav")
        
        do{
            audioplayer = try AVAudioPlayer(contentsOf: soundurl!)
        }
        catch{
            print(error)
        }
        audioplayer.play()
        
  
}
    
}
  


