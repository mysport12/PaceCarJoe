//
//  MainViewController.swift
//  PaceCarJoe
//
//  Created by Craig Martin on 4/10/15.
//  Copyright (c) 2015 MadKitty. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var aboutButton: UIButton!
    @IBOutlet weak var musicButton: UIButton!
    @IBOutlet weak var showsButton: UIButton!
    @IBOutlet weak var contactButton: UIButton!
    @IBOutlet weak var bandNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //IBActions
    
    @IBAction func aboutButtonPressed(sender: UIButton) {
        self.performSegueWithIdentifier("mainToAboutSegue", sender: self)
    }
    @IBAction func musicButtonPressed(sender: UIButton) {
        self.performSegueWithIdentifier("mainToMusicSegue", sender: self)
    }
    @IBAction func showsButtonPressed(sender: UIButton) {
        self.performSegueWithIdentifier("mainToShowsSegue", sender: self)
    }
    @IBAction func contactButtonPressed(sender: UIButton) {
        self.performSegueWithIdentifier("mainToContactSegue", sender: self)
    }
    
}
