//
//  RouterManager.swift
//  ManagerKit
//
//  Created by 高濛 on 2018/4/9.
//

import UIKit

public func findRootNavgationController() -> UINavigationController? {
    
    let rootVC = UIApplication.shared.windows[0].rootViewController
    
    if rootVC != nil && rootVC is UINavigationController {
        return rootVC as? UINavigationController
    } else {
        return nil
    }
}

public typealias RouterCallBack = (NSDictionary)->(UIViewController)


public class RouterManager : NSObject {
    
    //注册目标类型列表
    public enum PushType : String {
        
        //测试类型
        case one = "one"
        case two = "two"
    }
    
    var registers = NSMutableDictionary()
    var config : RouterConfig?
    
    public static let shared = RouterManager()

    public override init() {
        super.init()
    }
    
    public func registerConfig(config : RouterConfig) {
        //将config注册到manager
        registers.addEntries(from: config.registers)
    }
    
    public func rootNavigationPush(type : PushType, parmars : NSDictionary) {
        
        let nav = findRootNavgationController()
        let call = self.registers[type.rawValue] as? RouterCallBack
        
        guard let callBack = call else {
            return print("error : not find \(type.rawValue) type in registers")
        }
        
        let vc = callBack(parmars)
        nav?.pushViewController(vc, animated: true)
    }
}





