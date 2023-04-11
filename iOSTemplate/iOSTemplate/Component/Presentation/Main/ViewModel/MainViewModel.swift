//
//  MainViewModel.swift
//  iOSTemplate
//
//  Created by Bradley.yoon on 2023/04/05.
//

import Foundation

protocol MainViewModelInput {
    func viewDidLoad()
    func didSearch(query: String)
    func didCancelSearch()
}

protocol MainViewModelOutput {
    var items: [Image] { get }
}

typealias MainViewModel = MainViewModelInput & MainViewModelOutput

final class DefaultMainViewModel: MainViewModel {
    
    private let mainUseCase: MainUseCase
    
    var items: [Image] = [Image]()
    
    init(mainUseCase: MainUseCase) {
        self.mainUseCase = mainUseCase
    }
    
    func viewDidLoad() {
        print(#function)
    }
    
    func didSearch(query: String) {
        print(#function)
    }
    
    func didCancelSearch() {
        print(#function)
    }
    
    
    
    


}
