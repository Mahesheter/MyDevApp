//
//  ViewController.swift
//  MyDevApp
//
//  Created by Mahesh Nikate on 19/12/17.
//  Copyright © 2017 Mahesh Nikate. All rights reserved.
//

import Foundation
import UIKit
import SideMenuController

class ViewController: UIViewController {
    
    static var fromStoryboard: ViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "TEEEST"
    }
    
    @IBAction func dismissAction() {
        dismiss(animated: true, completion: nil)
    }
}
