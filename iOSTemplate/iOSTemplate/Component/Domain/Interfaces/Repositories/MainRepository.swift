//
//  MainRepository.swift
//  iOSTemplate
//
//  Created by Bradley.yoon on 2023/04/10.
//

import Foundation
import Combine

/**
 프로토콜의 직접적인 구현은 data layer에서 처리한다.
 */

protocol MainRepository {
    @discardableResult
    func fetchImageList(page: Int,
                        per_page: Int,
                        completion: @escaping (Result<[Image], Error>) -> Void
    ) -> Cancellable?
}
