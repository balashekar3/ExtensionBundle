//
//  UITableViewCell+Extension.swift
//  
//
//  Created by Balashekar Vemula on 19/03/24.
//

import Foundation
import UIKit
extension UITableViewCell {
    
    public static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    public static var identifier: String {
        return String(describing: self)
    }
}
