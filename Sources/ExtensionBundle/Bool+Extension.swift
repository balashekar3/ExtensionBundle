//
//  Bool+Extension.swift
//  
//
//  Created by Balashekar Vemula on 20/03/24.
//

import Foundation
public extension Bool{
    func asInt() -> Int{
        return self ? 1 : 0
    }
    func asString() -> String {
        return self ? "true" : "false"
    }
}
