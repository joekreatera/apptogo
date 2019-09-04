//
//  ViewController.swift
//  AppToGo
//
//  Created by Joe on 22/08/19.
//  Copyright © 2019 Joe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    public static let AppName:String = "My App 2 GO!"
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var bigText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Hello!");
        let msg = "Joe"
        
        let largeText = """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
        aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
        Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
        occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
        """
        myLabel.text = "Do hello \(msg) !!!"
        bigText.text = largeText
        
        var items:ItemDatabase = ItemDatabase.getInstance()
        
        items.append(  item:Item("Hello , first!"))
        items.append(  item:Item("Hello , second!"))
        items.append(  item:Item("Hello , third!"))
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var mySegue:String? = segue.identifier;
        var destination:UINavigationController = (segue.destination as! UINavigationController)
        var second:SecondViewF = destination.topViewController as! SecondViewF
        print("" + mySegue!)
        second.myData = myLabel.text!
        
    }


}

