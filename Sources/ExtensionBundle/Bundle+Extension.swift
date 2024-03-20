//
//  Bundle+Extension.swift
//  
//
//  Created by Balashekar Vemula on 20/03/24.
//

import Foundation
public extension Bundle{
    var shortVersion:String?{
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    
    var bundleVersion:String?{
        return infoDictionary?["CFBundleVersion"] as? String
    }
}
