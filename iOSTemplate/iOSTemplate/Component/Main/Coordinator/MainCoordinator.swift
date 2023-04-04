//
//  MainCoordinator.swift
//  iOSTemplate
//
//  Created by Bradley.yoon on 2023/04/03.
//

import Foundation
import UIKit
import ys_coordinator


protocol MainCoordinator {
    
    func moveImageDetailTransition()
}

class MainCoordinatorImplementation: Coordinator {
    
    var naviagtionController: MainNavigationController!
    
    init(naviagtionController: MainNavigationController!) {
        self.naviagtionController = naviagtionController
    }

    func start() {
        //MainViewConroller
        guard let vc = new(name: "MainViewController", storyboard: "Main") as? MainViewController else { return }
        vc.coordinator = self
        naviagtionController.pushViewController(vc, animated: true)
    }
}


extension MainCoordinatorImplementation: MainCoordinator {
    func moveImageDetailTransition() {
        print("clickclick")
        let coordinator = ImageDetailCoordinatorImplementation(navigationController: self.naviagtionController)
        self.coordinate(to: coordinator)
    }
}

