//
//  Networking.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 26/07/22.
//

import Foundation

class NetworkRepository: NetworkRepositoryProtocol {
    
    private let baseUrl: String = "https://api.deezer.com/"
    
    func searchMusic(music: String, completion: @escaping (SearchModel) -> Void) {
        guard let safeUrl = URL(string: "\(baseUrl)search?q=\(music)") else { return }
        URLSession.shared.dataTask(with: safeUrl) { data, _, error in
            if let data = data {
                guard let search = try? JSONDecoder().decode(SearchModel.self, from: data) else { return }
                completion(search)
            }
        }.resume()
    }
}
