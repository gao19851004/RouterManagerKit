//
//  Controllers.swift
//  OneKit
//
//  Created by 高濛 on 2018/4/10.
//

import Foundation
import ManagerKit

public class OneKitViewController : UIViewController {
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    public class func create(parmars : NSDictionary) -> OneKitViewController {
        
        let bundlePath = Bundle(for: OneKitViewController.self).bundlePath
        let b = Bundle.init(path: bundlePath)
        let bundleURL = b?.url(forResource: "OneKit", withExtension: "bundle")
        let bundle = Bundle.init(url: bundleURL!)
        
        return UIStoryboard.init(name: "One", bundle: bundle).instantiateViewController(withIdentifier: "OneKitViewController") as! OneKitViewController
    }
    
    @IBAction func twoKitAction() {
        RouterManager.shared.rootNavigationPush(kActionKey: "kTwoActonKey", parmars: [:])
    }
}
