//
//  DashboardManager.swift
//  MVVM-iOS
//
//  Created by Saiful I. Wicaksana on 04/02/19.
//  Copyright © 2019 icaksama. All rights reserved.
//

import Foundation

class DashboardMG {
    
    weak var binder: DashboardBinder?
    
    init(binder: DashboardBinder) {
        self.binder = binder
    }
    
    deinit {}
}
