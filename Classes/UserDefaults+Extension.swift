//
//  UserDefaults+Extension.swift
//  ExtensionLite
//
//  Created by Ali Zain on 21/08/2020.
//

import Foundation

public protocol DefaultsStorable {
    func get<T>(for type:T, key:String) -> T?
    func save<T>(key: String, value: T)
}

extension UserDefaults: DefaultsStorable {

    public func get<T>(for type: T, key: String) -> T? {
        return self.value(forKey: key) as? T
    }
    
    public func save<T>(key: String, value: T) {
        self.setValue(value, forKey: key)
    }
    
}
