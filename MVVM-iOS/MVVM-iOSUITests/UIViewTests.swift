//
//  MVVM_iOSUITests.swift
//  MVVM-iOSUITests
//
//  Created by Saiful I. Wicaksana on 04/02/19.
//  Copyright © 2019 icaksama. All rights reserved.
//

import XCTest
import UIKit

@testable import MVVM_iOS

class UIViewTests: XCTestCase {
//    var app: XCUIApplication!
    var view: UIView?
    
    var manager: ViewManager?
    var storyboard: UIStoryboard?
    var controller: UIViewController?
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
//        app = XCUIApplication()
        
        view = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        view?.backgroundColor = UIColor.red
        
        // We send a command line argument to our app,
        // to enable it to reset its state
//        app.launchArguments.append("--uitesting")
        
        storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        controller = storyboard!.instantiateViewController(withIdentifier: "boardTesting")
        UIApplication.shared.keyWindow?.rootViewController = controller
        manager = ViewManager()
    }
    
    override func tearDown() {
        view = nil
//        app = nil
        controller = nil
        super.tearDown()
    }
    
    func testExample() {
//        app.launch()
        
        // Make sure we're displaying onboarding
//        XCTAssertTrue(controller!.isViewLoaded)
        
        // Add view
        controller?.view.addSubview(view!)
        
        // Test attributes
        manager?.addAttributes(view: view!, attribute: Attributes.borderWidth, value: CGFloat(2))
        manager?.addAttributes(view: view!, attribute: Attributes.borderColor, value: UIColor.black)
        
        // Onboarding should no longer be displayed
//        XCTAssertTrue(controller!.isViewLoaded)
    }
    
}
