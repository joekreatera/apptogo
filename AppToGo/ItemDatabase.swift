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
    
    private var itemOnEdition:Item?
    
    init(){
        
        items = Array<Item>()
        itemOnEdition = nil
        
    }
    
    public var itemToEdit:Item?{
        
        get{
            return itemOnEdition
        }
        set(edit){
            itemOnEdition = edit;
        }
        
    }
    
    public func append(item:Item){
        
        items?.append(item);
        
    }
    
    public func delete(item:Item){
        
        var c = 0;
        for i in  items! {
            if( i===item){
                items?.remove(at:c)
                return;
            }
            c = c+1
        }
        
        //items?.remove(object:item)
        
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
