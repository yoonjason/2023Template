//
//  MainNavigationCoordinator.swift
//  iOSTemplate
//
//  Created by Bradley.yoon on 2023/04/04.
//

import Foundation
import ys_coordinator
import UIKit

protocol MainNavigationCoordinator {
    func setMainViewController()
}

class MainNavigationCoordinatorImplementation: Coordinator {
    
    let window: UIWindow!
    
    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        guard let vc = new(name: "MainViewController", storyboard: "Main") as? MainViewController else { return }
        let navigation = MainNavigationController()
        navigation.coordinator = self
        print("\(#file) \(#function)")
        vc.title = "ㄹㄹ"
        window.rootViewController = navigation
        window.makeKeyAndVisible()
    }
}

extension MainNavigationCoordinatorImplementation: MainNavigationCoordinator {
    func setMainViewController() {
        print("FFFF")
        if let mainNavigationController = self.window.rootViewController as? MainNavigationController {
            let mainCoordinator = MainCoordinatorImplementation(naviagtionController: mainNavigationController)
            self.coordinate(to: mainCoordinator)
        }
    }
}
