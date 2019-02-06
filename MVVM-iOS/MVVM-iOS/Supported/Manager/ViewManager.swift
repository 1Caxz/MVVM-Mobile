//
//  ViewManager.swift
//  MVVM-iOS
//
//  Created by Saiful I. Wicaksana on 06/02/19.
//  Copyright © 2019 icaksama. All rights reserved.
//

import Foundation
import UIKit

enum Attributes {
    case borderColor
    case borderWidth
}

class ViewManager {
    
    init() {}
    
    func addAttributes<T>(view: UIView, attribute: Attributes, value: T) {
        (attribute == Attributes.borderColor) ? view.layer.borderColor = (value as! CGColor) : nil
        (attribute == Attributes.borderWidth) ? view.layer.borderWidth = (value as! CGFloat) : nil
    }
    
    deinit {}
}
