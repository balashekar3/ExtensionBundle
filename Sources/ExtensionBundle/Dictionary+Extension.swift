//
//  Dictionary+Extension.swift
//  
//
//  Created by Balashekar Vemula on 20/03/24.
//

import Foundation
public extension Dictionary{
    mutating func switchKey(fromKey: Key, toKey:Key){
        if let entry = removeValue(forKey: fromKey){
            self[toKey] = entry
        }
    }
    mutating func switchKey(_ keyMappings:[(Key,Key)]){
        for (fromKey, toKey) in keyMappings {
            if let value = self.removeValue(forKey: fromKey){
                self[toKey] = value
            }
        }
    }
    mutating func merge(dict: [Key:Value]){
        for (k,v) in dict{
            updateValue(v, forKey: k)
        }
    }
}

public extension [String:AnyHashable] {
    func asData() -> Data? {
        var dict = [String:AnyHashable]()
        for (key,value) in self {
            if let hash = value.toHashable(){
                dict[key] = hash
            }
        }
        return try? JSONSerialization.data(withJSONObject: dict)
    }
    func toDataModel<T:Codable>() -> T?{
        guard let data = asData() else {
            return nil
        }
        return try? JSONDecoder().decode(T.self, from: data)
    }
}
