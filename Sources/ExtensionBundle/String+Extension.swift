//
//  FiString+Extensionle.swift
//  
//
//  Created by Balashekar Vemula on 20/03/24.
//

import Foundation
public extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).uppercased() + self.lowercased().dropFirst()
    }
    
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
    
    func removeSpecialChracter()->String{
        return replacingOccurrences(of: "\\", with: "", options: NSString.CompareOptions.literal, range: nil)
    }
    func toDouble() -> Double? {
        return NumberFormatter().number(from: self)?.doubleValue
    }
}

public extension String {
    static var emptyString: String {
        return ""
    }
}
