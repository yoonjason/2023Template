//
//  MainUseCase.swift
//  iOSTemplate
//
//  Created by Bradley.yoon on 2023/04/11.
//

import Foundation
import Combine

protocol MainUseCase {
    func excute(
        page: Int, per_page: Int, completion: @escaping (Result<[Image], Error>) -> Void
    ) -> Cancellable?
}

final class DefaultMainUseCase: MainUseCase {
    
    private let mainRepository: MainRepository
    
    init(
        mainRepository: MainRepository
    ){
        self.mainRepository = mainRepository
    }
    
    func excute(page: Int, per_page: Int, completion: @escaping (Result<[Image], Error>) -> Void) -> Cancellable? {
        return mainRepository.fetchImageList(page: page, per_page: per_page) { (result) in
            if case .success(let success) = result {
                completion(result)
            }
        }
    }
}
