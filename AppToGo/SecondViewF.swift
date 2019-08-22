import Foundation
import UIKit

class SecondViewF: UIViewController{
    
    @IBOutlet weak var msg: UILabel!
    
    public var myData:String = ""
    let myItem:MyItem = MyItem(nm:"AnyName")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print( myData + "\n" + ViewController.AppName )
        msg.text = myData + "\n" + ViewController.AppName
        
       
        myItem.doRandomStuff()
        print( myItem.name)
        
    }
    
    @IBAction func doCall(_ sender: Any) {
        myItem.doRandomStuff()
        print( myItem.name)
    }
    
}
