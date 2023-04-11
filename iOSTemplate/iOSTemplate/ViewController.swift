//
//  ViewController.swift
//  iOSTemplate
//
//  Created by Bradley.yoon on 2023/02/22.
//

import UIKit
import ys_networking
import ys_coordinator

struct ResponseModel: Codable {
    var icon_url: String = ""
    var id: String = ""
    var url: String = ""
    var value: String = ""
}

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let networkiManager = NetworkManager.shared
//        networking.test()
        let url = "https://api.chucknorris.io/jokes/random"
//
        networkiManager.fetchData(for: url, dataType: ResponseModel.self) { (result) in
            switch result {
            case .success(let success):
                print(success)
                DispatchQueue.main.async { [weak self] in
                    guard let weakSelf = self else { return }
                }
                
            case .failure(let failure):
                print(failure)
            }
        }
        
        networkiManager.fetchImage(withUrlString: "https://etoland.co.kr/data/daumeditor10/230401/thumbnail3/20098316803448391.jpg") { [weak self] image in
            guard let weakSelf = self else { return }
            weakSelf.imageView.image = image
        }
        
//        self.imageView.image = networkiManager.fetchImage(withImageUrl: "https://etoland.co.kr/data/daumeditor10/230328/thumbnail3/81366016799800051.jpg")
//https://etoland.co.kr/data/daumeditor10/230328/thumbnail3/81366016799800051.jpg
//        networking.test()
        
    }


}
