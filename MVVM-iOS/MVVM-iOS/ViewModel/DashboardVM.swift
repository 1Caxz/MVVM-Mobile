//
//  DashboardVM.swift
//  MVVM-iOS
//
//  Created by Saiful I. Wicaksana on 04/02/19.
//  Copyright © 2019 icaksama. All rights reserved.
//

import Foundation

class DashboardVM {
    
    weak var binder: DashboardBinder?
    
    private var manager: DashboardMG?
    private var model: DashboardM?
    
    init(binder: DashboardBinder) {
        self.binder = binder
        self.manager = DashboardMG(binder: binder)
        self.model = DashboardM()
    }
    
    func Main() {
        binder!.setLabel(val: "Set label from binder!")
    }
    
    deinit {
        self.manager = nil
        self.model = nil
        print("DashboardVM deallocate.")
    }
}
