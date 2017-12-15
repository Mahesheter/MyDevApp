//
//  LoginViewController.swift
//  MyDevApp
//
//  Created by Mahesh Nikate on 14/12/17.
//  Copyright © 2017 Mahesh Nikate. All rights reserved.
//

import UIKit
import Simplicity

class LoginViewController: UIViewController {

    @IBOutlet weak var txt_email: UITextField!
    
    @IBOutlet weak var txt_password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func login_action(_ sender: Any) {
    }

    @IBAction func login_with_facebook_action(_ sender: Any) {
        
        Simplicity.login(Facebook()) { (accessToken, error) in
            // Handle access token here
            print("Logged win with Facebook..!")
        }
    }
    @IBAction func login_with_google_action(_ sender: Any) {
        
        Simplicity.login(Google()) { (accessToken, error) in
            // Handle access token here
            if accessToken != nil
            {
              print("Logged win with Google..!")
            }
        
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
