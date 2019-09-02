//
//  Item.swift
//  AppToGo
//
//  Created by Joe on 02/09/19.
//  Copyright © 2019 Joe. All rights reserved.
//

import Foundation

class Item{
    
    public var name:String = ""
    public var dateDone:Date?
    public var isDone:Bool
    
    init(_ name:String){
        self.name = name
        dateDone = nil
        isDone = false
        
    }
}
