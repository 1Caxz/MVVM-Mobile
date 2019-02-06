//
//  DashboardBinder.swift
//  MVVM-iOS
//
//  Created by Saiful I. Wicaksana on 04/02/19.
//  Copyright © 2019 icaksama. All rights reserved.
//

import Foundation
import UIKit

class DashboardBinder {
    
    weak var inputText: UITextField?
    weak var btnTest: UIButton?
    weak var lblTest: UILabel?
    
    init(inputText: UITextField, btnTest: UIButton, lblTest: UILabel) {
        self.inputText = inputText
        self.btnTest = btnTest
        self.lblTest = lblTest
    }
    
    func setLabel(val: String) {
        lblTest?.text = val
    }
    
    func getInput() -> String {
        return inputText!.text!
    }
    
    func onButtonClick() {
        self.setLabel(val: self.inputText!.text!)
    }
    
    deinit {
        print("Class deallocate.")
    }
}
