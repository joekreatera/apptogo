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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = editButtonItem
                
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ItemDatabase.getInstance().database.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "MyCustomCell") as! UITableViewCell
        
        var it:Item = ItemDatabase.getInstance().database[indexPath.item]
        
        cell.textLabel?.text =  it.name
        
        
        if( it.isDone ){
            cell.accessoryType = .checkmark
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        let it:Item = ItemDatabase.getInstance().database[indexPath.item]
        
        ItemDatabase.getInstance().itemToEdit = it;
        
        performSegue(withIdentifier: "showEditMode", sender: nil)
        
        //  tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            let it:Item = ItemDatabase.getInstance().database[indexPath.item]
            ItemDatabase.getInstance().delete(item: it)
            tableView.reloadData()
        }
    }
    
}
