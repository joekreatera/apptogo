//
//  JWebkitViewController.swift
//  AppToGo
//
//  Created by Joe on 22/08/19.
//  Copyright © 2019 Joe. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class JWebkitViewController:UIViewController, WKNavigationDelegate{
    
    @IBOutlet weak var web: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url:URL = URL(string: "https://www.tec.mx")!
        print("loading" + url.absoluteString )
        web.load(URLRequest(url:url))
        print( web.isLoading )
        web.navigationDelegate = self
        perform(#selector(checkLoading), with: nil, afterDelay: 5.0)
    
    }
    
    @objc func checkLoading()->Void{
        
        print( web.isLoading )
        
        if(web.isLoading){
            perform(#selector(checkLoading), with: nil, afterDelay: 5.0)
        }
    }
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        title = webView.title
    }
    
}
