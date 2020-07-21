//
//  AppStoryboard.swift
//  ExtensionLite
//
//  Created by Ali Zain on 22/07/2020.
//

import UIKit

enum AppStoryboard : String {
    
    //Add all the storyboard names you wanted to use in your project
    case Login
    case Account
    case HomeActivity
    case QRCode
    case Bills
    case Menu
    case Profile
    case About
    case Payment
    case Filter
    case Donations
    
    var instance : UIStoryboard {
        
        return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }
    
    func viewController<T : UIViewController>(viewControllerClass : T.Type, function : String = #function, line : Int = #line, file : String = #file) -> T {
        
        let storyboardID = (viewControllerClass as UIViewController.Type).storyboardID
        
        guard let scene = instance.instantiateViewController(withIdentifier: storyboardID) as? T else {
            
            fatalError("ViewController with identifier \(storyboardID), not found in \(self.rawValue) Storyboard.\nFile : \(file) \nLine Number : \(line) \nFunction : \(function)")
        }
        
        return scene
    }
    
    func initialViewController() -> UIViewController? {
        return instance.instantiateInitialViewController()
    }
    
    func initialViewController(withIdentifier id:String) -> UIViewController {
        return instance.instantiateViewController(withIdentifier: id)
    }
}
