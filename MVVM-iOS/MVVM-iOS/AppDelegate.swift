//
//  AppDelegate.swift
//  MVVM-iOS
//
//  Created by Saiful I. Wicaksana on 04/02/19.
//  Copyright © 2019 icaksama. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Do something for ui testing mode
        if CommandLine.arguments.contains("--uitesting") {
            UserDefaults.standard.removePersistentDomain(forName: Bundle.main.bundleIdentifier!)
        }
        
        return true
    }
}

