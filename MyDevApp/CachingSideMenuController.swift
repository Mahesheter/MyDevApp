//
//  CachingSideMenuController.swift
//  MyDevApp
//
//  Created by Mahesh Nikate on 19/12/17.
//  Copyright © 2017 Mahesh Nikate. All rights reserved.
//

import Foundation

import UIKit
import SideMenuController

class CachingSideMenuController: SideMenuController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        performSegue(withIdentifier: "cachingEmbedSide", sender: nil)
        embed(centerViewController: UINavigationController(rootViewController:FCViewController()), cacheIdentifier: FCViewController.cacheIdentifier)
    }
}
