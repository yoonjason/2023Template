//
//  MainViewController.swift
//  iOSTemplate
//
//  Created by Bradley.yoon on 2023/04/03.
//

import UIKit
import ys_networking

class MainViewController: UIViewController {
    
    

    var coordinator: MainCoordinator!
    //ywkm6_P3sENrA8VSyGhhOacqS-x_k-hHxxPGZVoxK1A
    override func viewDidLoad() {
        super.viewDidLoad()

        let networkManager = NetworkManager.shared
//        let url = "https://api.unsplash.com/photos?page=1&client_id=ywkm6_P3sENrA8VSyGhhOacqS-x_k-hHxxPGZVoxK1A"
        let url = "https://api.unsplash.com/photos?&client_id=AqzzK8Iv3d61GEwrMMurhBnVnN1MRMoRkjDJj8bNLf0&page=1&per_page=10"
        self.navigationController?.isNavigationBarHidden = true
        let encodedUrlString = url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        networkManager.fetechData(for: encodedUrlString, dataType: [Image].self) { [weak self] (result) in
            guard let weakSelf = self else { return }
            switch result {
            case .success(let model):
                print(model)
            case .failure(let error):
                print(error)
            }
        }

    }


    @IBAction func didTapMain(_ sender: UIButton) {
        self.coordinator.moveImageDetailTransition()
    }
}
