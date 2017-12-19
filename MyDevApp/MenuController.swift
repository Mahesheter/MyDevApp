//
//  MenuController.swift
//  MyDevApp
//
//  Created by Mahesh Nikate on 19/12/17.
//  Copyright © 2017 Mahesh Nikate. All rights reserved.
//

import Foundation

import UIKit

class MenuController: UITableViewController {
    
    let segues = ["showCenterController1", "showCenterController2", "showCenterController3"]
    private var previousIndex: NSIndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return segues.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell")!
        cell.textLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 15)
        cell.textLabel?.text = "Switch to controller \(indexPath.row + 1)"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView,
                            didSelectRowAt indexPath: IndexPath)  {
        
        if let index = previousIndex {
            tableView.deselectRow(at: index as IndexPath, animated: true)
        }
        
        sideMenuController?.performSegue(withIdentifier: segues[indexPath.row], sender: nil)
        previousIndex = indexPath as NSIndexPath?
    }
    
}
