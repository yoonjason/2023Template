//
//  MainNavigationController.swift
//  iOSTemplate
//
//  Created by Bradley.yoon on 2023/04/03.
//

import UIKit

class MainNavigationController: UINavigationController {
    
    var coordinator: MainNavigationCoordinator!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.coordinator.setMainViewController()
        // Do any additional setup after loading the view.
    }
    

}
