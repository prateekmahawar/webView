//
//  ViewController.swift
//  web-view
//
//  Created by Prateek Mahawar on 26/06/16.
//  Copyright © 2016 Prateek Mahawar. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var container: UIView!
    
    var webView:WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView = WKWebView()
        container.addSubview(webView)
        loadRequest("https://www.google.co.in")
        
    }
    
    override func viewDidAppear(animated: Bool) {
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
    
    }
    func loadRequest(urlStr:String) {
        let url = NSURL(string:urlStr)!
        let request = NSURLRequest(URL: url)
        webView.loadRequest(request)
        
    }
    
    @IBAction func first(sender: AnyObject) {
        loadRequest("https://www.google.co.in")
    }
    
    @IBAction func second(sender: AnyObject) {
        loadRequest("https://www.yahoo.com")
    }
    
    @IBAction func third(sender: AnyObject) {
        loadRequest("https://www.adobe.com")
    }
    
  
    
}

