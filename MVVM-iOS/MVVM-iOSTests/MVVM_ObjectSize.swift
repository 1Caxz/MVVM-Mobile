//
//  MVVM_ObjectSize.swift
//  MVVM-iOSTests
//
//  Created by Saiful I. Wicaksana on 06/02/19.
//  Copyright © 2019 icaksama. All rights reserved.
//

import XCTest

@testable import MVVM_iOS

class MVVM_ObjectSize: XCTestCase {

    override func setUp() {
        
    }

    override func tearDown() {
        
    }

    func testObjectSize() {
        print("\(DashboardVC.self) \(class_getInstanceSize(DashboardVC.self)) bytes")
        print("\(DashboardBinder.self) \(class_getInstanceSize(DashboardBinder.self)) bytes")
        print("\(DashboardVM.self) \(class_getInstanceSize(DashboardVM.self)) bytes")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
