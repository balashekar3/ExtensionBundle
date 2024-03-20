//
//  Double+Extension.swift
//  
//
//  Created by Balashekar Vemula on 20/03/24.
//

import Foundation
public extension Double{
    func roundToDecimal(_ fractionDigits:Int) -> Double{
        let multiplier = pow(10, Double(fractionDigits))
        return (self * multiplier).rounded() / multiplier
    }
}
