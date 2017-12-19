//
//  CustomSideMenuController.swift
//  MyDevApp
//
//  Created by Mahesh Nikate on 19/12/17.
//  Copyright © 2017 Mahesh Nikate. All rights reserved.
//

import Foundation
import SideMenuController

class CustomSideMenuController: SideMenuController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        performSegue(withIdentifier: "showCenterController1", sender: nil)
        performSegue(withIdentifier: "containSideMenu", sender: nil)
    }
}
