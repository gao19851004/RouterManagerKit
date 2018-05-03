//
//  MasterRouterConfig.swift
//  Master
//
//  Created by 高濛 on 2018/4/10.
//  Copyright © 2018年 高濛. All rights reserved.
//

import Foundation
import ManagerKit
import OneKit
import TwoKit

let kOneActonKey = "kOneActonKey"
let kTwoActonKey = "kTwoActonKey"

class MasterRouterConfig : RouterConfig {
    
    override func registerCallBacks() {
        
        //注册onekit库需要跳转的类型
        let one : RouterCallBack = {(parmars)->(UIViewController) in
            
            let vc = OneKitViewController.create(parmars: [:])
            return vc
        }
        self.registers[kOneActonKey] = one
        
        //注册twokit库需要跳转的类型
        let two : RouterCallBack = {(parmars)->(UIViewController) in
            
            let vc = TwoKitViewController.create(parmars: [:])
            return vc
        }
        self.registers[kTwoActonKey] = two
        
    }
    
    class func creatConfig() -> MasterRouterConfig {
        let masterConfig = MasterRouterConfig()
        masterConfig.registerCallBacks()
        return masterConfig
    }
}


