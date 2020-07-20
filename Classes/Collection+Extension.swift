//
//  Collection+Extension.swift
//  ExtensionLite
//
//  Created by Ali Zain on 21/07/2020.
//

import Foundation
import UIKit

public extension Collection {
    
    /// Convert self to JSON String.
    /// - Returns: Returns the JSON as String or empty string if error while parsing.
    func json() throws -> String {
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: self, options: [.prettyPrinted])
            guard let jsonString = String(data: jsonData, encoding: String.Encoding.utf8) else {
                throw CollectionError.jsonIn(encoding: .utf8)
            }
            return jsonString
        } catch let parseError {
            throw parseError
        }
    }
}
