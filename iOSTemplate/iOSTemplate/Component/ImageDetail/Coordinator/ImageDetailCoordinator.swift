//
//  ImageDetailCoordinator.swift
//  iOSTemplate
//
//  Created by Bradley.yoon on 2023/04/04.
//

import Foundation
import ys_coordinator

protocol ImageDetailCoordinator {
    
}

class ImageDetailCoordinatorImplementation: Coordinator {
    
    let navigationController: MainNavigationController!
    
    init(navigationController: MainNavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        guard let vc = new(name: "ImageDetailViewController", storyboard: "Main") as? ImageDetailViewController else { return }
        
        self.navigationController.pushViewController(vc, animated: true)
    }
}

extension ImageDetailCoordinatorImplementation: ImageDetailCoordinator {
    
}
