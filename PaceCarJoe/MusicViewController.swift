//
//  MusicViewController.swift
//  PaceCarJoe
//
//  Created by Craig Martin on 5/17/15.
//  Copyright (c) 2015 MadKitty. All rights reserved.
//

import UIKit
import AVFoundation

class MusicViewController: UIViewController {
    
    var audioSession: AVAudioSession!
    var audioQueuePlayer: AVQueuePlayer!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
