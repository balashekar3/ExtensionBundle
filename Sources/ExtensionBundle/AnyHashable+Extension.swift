//
//  AnyHashable+Extension.swift
//  
//
//  Created by Balashekar Vemula on 20/03/24.
//

import Foundation
public extension AnyHashable{
    func toHashable()->AnyHashable?{
        if let dict = self as? [String:AnyHashable]{
            var arr = [String:AnyHashable]()
            for (key,value) in dict{
                if let hash = value.toHashable(){
                    arr[key] = hash
                }
            }
            return arr
        } else if let value = self as? [AnyHashable] {
            var arr = [AnyHashable]()
            for item in value {
                if let hashed = item.toHashable(){
                    arr.append(hashed)
                }
            }
            return arr
        }else if let value = self as? (any RawRepresentable){
            return value.rawValue as? String
        }
        return self
    }
}
