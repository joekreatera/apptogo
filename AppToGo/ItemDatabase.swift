//
//  ItemDatabase.swift
//  AppToGo
//
//  Created by Joe on 02/09/19.
//  Copyright © 2019 Joe. All rights reserved.
//

import Foundation


class ItemDatabase {
    
    private static var instance:ItemDatabase?
    
    private var items:Array<Item>?
    
    init(){
        
        items = Array<Item>()
        
    }
    
    public var database:Array<Item>{
        
        get{
            return items!
        }
        set(items){
            print("I shall do nothing!")
            // not implemented!!!
        }
        
    }
    
    public static func getInstance()->ItemDatabase{
    
        if( instance == nil){
            
            instance = ItemDatabase()
            
        }
        
        return instance!;
        
    }
    
    
    
}
