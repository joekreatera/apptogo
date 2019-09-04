//
//  DetailViewController.swift
//  AppToGo
//
//  Created by Joe on 04/09/19.
//  Copyright © 2019 Joe. All rights reserved.
//

import Foundation
import UIKit

public class DetailViewController:UIViewController{
    
    @IBOutlet weak var activityTitle: UITextField!
    @IBOutlet weak var isDoneControl: UISwitch!
    
    
    var item:Item?;
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        print("hello")
        
        item = ItemDatabase.getInstance().itemToEdit
        
        activityTitle.text = item?.name
        
        isDoneControl.setOn(false, animated: true)
    
        if item!.isDone == true{
            isDoneControl.setOn(true, animated: true)
        }
    }
    
    @IBAction func doAdd(_ sender: Any) {
        
        item?.isDone = isDoneControl.isOn
        item?.name = activityTitle.text!
        
        ItemDatabase.getInstance().append(item: item!)
        let uiv:UIViewController? = navigationController?.popViewController(animated: true)
        
        
    }
    
    override public func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var mySegue:String? = segue.identifier;
        var destination:UINavigationController = (segue.destination as! UINavigationController)
        var second:JTableViewController = destination.topViewController as! JTableViewController
        print("" + mySegue!)
        second.tableView.reloadData()
        
    }
    
}
