//
//  AppDelegate.swift
//  iOSTemplate
//
//  Created by Bradley.yoon on 2023/02/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.appCoordinator = AppCoordinator(window: window!)
        self.appCoordinator?.start()
        
        
        return true
    }

}

