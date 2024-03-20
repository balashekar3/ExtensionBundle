//
//  UICollectionViewCell+Extension.swift
//  
//
//  Created by Balashekar Vemula on 19/03/24.
//

import Foundation
import UIKit
public extension UICollectionViewCell {
    
    static var nib: UINib {
        return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
}
