//
//  MyItem.swift
//  AppToGo
//
//  Created by Joe on 22/08/19.
//  Copyright © 2019 Joe. All rights reserved.
//

import Foundation


class MyItem{
    
    
    private var _name:String;
    
    var name:String{

        get{
            return _name
        }
        
        set(nm){
            _name = nm
        }
        
    }
    
    init(nm:String){
        self._name = nm
    }
    
    
    func doRandomStuff()->Void{
    
        
        // use of tuples here!
        let t:Int = Int.random(in: ClosedRange<Int>(uncheckedBounds:(lower:0,upper:100) ))
        
        
        name = name + "" + String(t)
    
    }
    
}
