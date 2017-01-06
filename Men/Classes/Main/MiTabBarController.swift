//
//  MiTabBarController.swift
//  Men
//
//  Created by henghao.jiao on 17/1/6.
//  Copyright © 2017年 HaoMen. All rights reserved.
//

import UIKit

class MiTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setChildControllers()
    }
    func setChildControllers(){
        let controllersNames = ["我","秘书","闹钟","邮件","天气","提醒"]
        let controllersNameArray = ["MiMineViewController","MiSecretaryViewController","MiClockViewController","MiMailTableViewController","MiWeatherViewController","MiRemindTableViewController"]
        var index = controllersNameArray.count
        for controllerName in controllersNameArray {
            guard let nameSpace = Bundle.main.infoDictionary!["CFBundleExecutable"]as? String else{return}
            guard let type = NSClassFromString(nameSpace + "." + controllerName) as? UIViewController.Type else{return}
            let vc =  type.init()
            let navi = MiNavigationControllerr(rootViewController: vc)
            vc.title = controllersNames[controllersNameArray.count - index]
            index -= 1
            self.addChildViewController(navi)
        }
       
    }

}
