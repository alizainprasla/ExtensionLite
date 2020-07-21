//
//  Bundle+Extension.swift
//  ExtensionLite
//
//  Created by Ali Zain on 22/07/2020.
//

import Foundation

extension Bundle {
    
    static func loadView<T>(fromNib name: String, withType type: T.Type) -> T {
        if let view = Bundle.main.loadNibNamed(name, owner: nil, options: nil)?.first as? T {
            return view
        }
        
        fatalError("Could not load view with type " + String(describing: type))
    }
}
