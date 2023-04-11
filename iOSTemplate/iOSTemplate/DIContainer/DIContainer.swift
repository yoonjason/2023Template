//
//  DIContainer.swift
//  iOSTemplate
//
//  Created by Bradley.yoon on 2023/04/10.
//

import Foundation

class DIContainer {

    static let shared = DIContainer()

    private var dependencies = [String: Any]()

    private init() { }


    func register<T>(_ dependency: T) {
        let key = String(describing: type(of: T.self))
        dependencies[key] = dependency
    }

    func resolve<T>() -> T {
        let key = String(describing: type(of: T.self))
        let dependency = dependencies[key]
        precondition(dependency != nil, "\(key)는 register되지 않았었어요. resolve 부르기 전에 register 해주세요")

        return dependency as! T
    }

}


@propertyWrapper
class Dependency<T> {
    let wrappedValue: T

    init() {
        self.wrappedValue = DIContainer.shared.resolve()
    }

}
