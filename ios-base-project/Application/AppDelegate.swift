//
//  AppDelegate.swift
//  ios-base-project
//
//  Created by Joyce Rosario Batista on 9/12/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //Instantiate main window and set BaseView as root view controller:
        window = UIWindow(frame: UIScreen.main.bounds)
        RootRouter().presentBaseScreen(in: window!)
        return true
    }
}

