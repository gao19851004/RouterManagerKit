//
//  ViewController.swift
//  Master
//
//  Created by 高濛 on 2018/4/9.
//  Copyright © 2018年 高濛. All rights reserved.
//

import UIKit
import ManagerKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //创建一个Config对象
        let c = MasterRouterConfig.creatConfig()
        //进行跳转注册                   
        RouterManager.shared.registerConfig(config: c)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func oneKitAction() {
        RouterManager.shared.rootNavigationPush(kActionKey: kOneActonKey, parmars: [:])
    }
    
    @IBAction func twoKitAction() {
        RouterManager.shared.rootNavigationPush(kActionKey: kTwoActonKey, parmars: [:])
    }
}

