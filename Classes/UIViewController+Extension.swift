//
//  UIViewController+Extension.swift
//  ExtensionLite
//
//  Created by Ali Zain on 22/07/2020.
//

import UIKit

extension UIViewController {
    
    // Not using static as it wont be possible to override to provide custom storyboardID then
    class var storyboardID : String {
        
        //if your storyboard name is same as ControllerName uncomment it
        //return "\(self)"
        return "\(self)" + "_ID"
        
    }
    
    static func instantiate(fromAppStoryboard appStoryboard: AppStoryboard) -> Self {
        return appStoryboard.viewController(viewControllerClass: self)
    }
    
    static func className(controller:UIViewController) -> String {
        return String.init(describing: controller.self)
    }
}
