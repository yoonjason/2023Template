//
//  MainViewController.swift
//  iOSTemplate
//
//  Created by Bradley.yoon on 2023/04/03.
//

import UIKit

class MainViewController: UIViewController {
    
    var coordinator: MainCoordinator!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("test")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func didTapMain(_ sender: UIButton) {
        self.coordinator.moveImageDetailTransition()
    }
}
