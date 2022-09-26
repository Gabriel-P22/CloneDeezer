//
//  SearchViewModelUseCase.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 02/08/22.
//

import Foundation

class SearchViewModelUseCase: SearchViewModelUseCaseProcol {
    let networkRepository: NetworkRepositoryProtocol
    
    init(networlRepository: NetworkRepositoryProtocol) {
        self.networkRepository = networlRepository
    }
    
    func searchMusic(music: String, completion: @escaping(SearchModel) -> Void) {
        networkRepository.searchMusic(music: music, completion: completion)
    }
    
}
