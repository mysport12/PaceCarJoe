//
//  LoginViewController.swift
//  PaceCarJoe
//
//  Created by Craig Martin on 5/14/15.
//  Copyright (c) 2015 MadKitty. All rights reserved.
//

import UIKit
import LocalAuthentication

class LoginViewController: UIViewController, CreateAccountViewControllerDelegate {
    
    @IBOutlet weak var usernameTextBox: UITextField!
    
    @IBOutlet weak var passwordTextBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AuthenticateUser.authenticateUser()
        
        // Do any additional setup after loading the view.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "loginToCreateAccountSegue" {
            var createAccountVC = segue.destinationViewController as! CreateAccountViewController
            createAccountVC.delegate = self
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonPressed(sender: AnyObject) {
        self.performSegueWithIdentifier("loginToMainSegue", sender: self)
    }
    
    @IBAction func createAccountButtonPressed(sender: AnyObject) {
        self.performSegueWithIdentifier("loginToCreateAccountSegue", sender: self)
    }
    
    func accountCreated() {
        self.performSegueWithIdentifier("loginToMainSegue", sender: nil)
    }
    
}
