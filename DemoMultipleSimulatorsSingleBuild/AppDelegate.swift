//
//  AppDelegate.swift
//  DemoMultipleSimulatorsSingleBuild
//
//  Created by Duy Tran N. on 06/07/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        window = UIWindow(frame: UIScreen.main.bounds)

        if let window = window {
            window.makeKeyAndVisible()
            window.rootViewController = HomeViewController()
        }

        return true
    }
}
