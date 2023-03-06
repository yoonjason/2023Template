//
//  ViewController.swift
//  iOSTemplate
//
//  Created by Bradley.yoon on 2023/02/22.
//

import UIKit
import ys_networking

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let networking = NetworkManager.shared
        networking.test()
        
        
    }


}

