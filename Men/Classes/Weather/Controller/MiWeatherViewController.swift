//
//  MiWeatherViewController.swift
//  Men
//
//  Created by henghao.jiao on 17/1/6.
//  Copyright © 2017年 HaoMen. All rights reserved.
//

import UIKit
import WebKit
class MiWeatherViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.initWebView()
        
    }
    func initWebView(){
    let webView = WKWebView(frame: UIScreen.main.bounds)
    webView.load(URLRequest(url:URL(string:"http://tq.91.com/")! ))
    self.view.addSubview(webView)
    }
}
