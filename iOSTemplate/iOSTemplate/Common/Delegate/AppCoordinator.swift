//
//  AppCoordinator.swift
//  iOSTemplate
//
//  Created by Bradley.yoon on 2023/04/03.
//

import Foundation
import UIKit
import ys_coordinator

extension Coordinator {
    public func coordinate(to coordinator: Coordinator) {
        coordinator.start()
    }
}

public class AppCoordinator: Coordinator {
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    public func start() {
        let naviCoordinator = MainNavigationCoordinatorImplementation(window: window)
        coordinate(to: naviCoordinator)
    }
}
