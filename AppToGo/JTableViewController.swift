//
//  JTableViewController.swift
//  AppToGo
//
//  Created by Joe on 28/08/19.
//  Copyright © 2019 Joe. All rights reserved.
//

import Foundation
import UIKit

class JTableViewController:UITableViewController{

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "MyCustomCell") as! UITableViewCell
        
        print( indexPath.item)
        cell.textLabel?.text = "Joe1"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("hello")
        
        //  tableView.reloadData()
    }
    
}
