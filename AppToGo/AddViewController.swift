//
//  AddViewController.swift
//  AppToGo
//
//  Created by Joe on 09/09/19.
//  Copyright © 2019 Joe. All rights reserved.
//

import Foundation
import UIKit

class AddViewController:UIViewController{
    
    @IBOutlet weak var newItemText: UITextField!
    
    @IBAction func finalizeAddTask(_ sender: Any) {
        
        var todo:Item = Item(newItemText.text!)
        ItemDatabase.getInstance().append(item: todo)
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    
}
