//
//  ViewController.swift
//  StarWarsAudio
//
//  Created by Sergii Nezdolii on 19/03/16.
//  Copyright © 2016 FrostDigital. All rights reserved.
//

import UIKit
import AVFoundation

enum StarWarsAudio : String {
    case
    R2D2 = "r2d2-squeaks1",
    LightSaber = "saberon",
    Yoda = "yoda-thereIsNoTry",
    Vader = "vader_no",
    StarWarsMain = "starWars-mainTitle"
}

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    
    @IBAction func playStarWars(sender: AnyObject?) {
        playSound(StarWarsAudio.StarWarsMain.rawValue)
    }

    @IBAction func playR2D2(sender: AnyObject?) {
        playSound(StarWarsAudio.R2D2.rawValue)
    }

    @IBAction func playYoda(sender: AnyObject?) {
        playSound(StarWarsAudio.Yoda.rawValue)
    }

    @IBAction func playLightSaber(sender: AnyObject?) {
        playSound(StarWarsAudio.LightSaber.rawValue)
    }
    
    @IBAction func playVader(sender: AnyObject?) {
        playSound(StarWarsAudio.Vader.rawValue)
    }
    
    func playSound(soundName: String) {
        let starWarsSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(soundName, ofType: "mp3")!)
        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL:starWarsSound)
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        } catch {
            print("Error getting the audio file")
        }
    }
}

