//
//  NSMutableAttributedString.swift
//  ExtensionLite
//
//  Created by Ali Zain on 21/07/2020.
//

import UIKit

extension NSMutableAttributedString {
    
    public func add(hyperlink text:String, url:String) -> Bool {
        
        let foundRange = self.mutableString.range(of: text)
        if foundRange.location != NSNotFound {
            self.addAttribute(NSAttributedString.Key.link, value: url, range: foundRange)
            return true
        }
        return false
    }
}
