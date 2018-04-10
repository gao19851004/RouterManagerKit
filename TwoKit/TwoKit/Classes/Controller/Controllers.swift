//
//  Controllers.swift
//  OneKit
//
//  Created by 高濛 on 2018/4/10.
//

import Foundation
import ManagerKit

public class TwoKitViewController : UIViewController {
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    public class func create(parmars : NSDictionary) -> TwoKitViewController {
        
        let bundlePath = Bundle(for: TwoKitViewController.self).bundlePath
        let b = Bundle.init(path: bundlePath)
        let bundleURL = b?.url(forResource: "TwoKit", withExtension: "bundle")
        let bundle = Bundle.init(url: bundleURL!)
        
        return UIStoryboard.init(name: "Two", bundle: bundle).instantiateViewController(withIdentifier: "TwoKitViewController") as! TwoKitViewController
    }
    
    @IBAction func oneKitAction() {
        RouterManager.shared.rootNavigationPush(type: .one, parmars: [:])
    }
}

