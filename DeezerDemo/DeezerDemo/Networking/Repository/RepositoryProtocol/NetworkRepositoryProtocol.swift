//
//  NetworkRepository.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 02/08/22.
//

import Foundation

protocol NetworkRepositoryProtocol {
    func searchMusic(music: String, completion: @escaping(SearchModel) -> Void)
}

//typealias NameYourFunction = @escaping(SearchMusic) -> Void
