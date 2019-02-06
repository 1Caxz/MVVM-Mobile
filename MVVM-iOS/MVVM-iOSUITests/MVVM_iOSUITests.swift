//
//  MVVM_iOSUITests.swift
//  MVVM-iOSUITests
//
//  Created by Saiful I. Wicaksana on 04/02/19.
//  Copyright © 2019 icaksama. All rights reserved.
//

import XCTest

class MVVM_iOSUITests: XCTestCase {
//    var app: XCUIApplication!

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
        
        // We send a command line argument to our app,
        // to enable it to reset its state
//        app.launchArguments.append("--uitesting")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        
    }

}
