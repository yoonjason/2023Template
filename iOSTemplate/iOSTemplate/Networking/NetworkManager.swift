//
//  NetworkManager.swift
//  iOSTemplate
//
//  Created by Bradley.yoon on 2023/02/22.
//

import Foundation

enum NetworkError: Error {
    case failParse
    case invalid
}

final class NetworkManager2 {

    let shared = NetworkManager2()

    let session = URLSession.shared

    func fetchData<T:Codable>(
        for url: String,
        dataType: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {

        guard let url = URL(string: url) else { return }
        let request = URLRequest(url: url)

        let dataTask = session.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }

            if let data = data,
                let response = response as? HTTPURLResponse,
                200..<400 ~= response.statusCode {
                do {
                    let data = try JSONDecoder().decode(T.self, from: data)
                    completion(.success(data))
                } catch {
                    completion(.failure(NetworkError.failParse))
                }
            } else {
                completion(.failure(NetworkError.invalid))
            }

        }
        dataTask.resume()
    }

}

