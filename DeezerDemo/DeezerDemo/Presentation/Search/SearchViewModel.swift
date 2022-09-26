//
//  SearchViewModel.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 02/08/22.
//

import Foundation

protocol SearchViewModelProtocol {
    func searchViewModelUseCase(music: String, completion: @escaping(SearchModel) -> Void)
    func searchItens(music: String,completion: @escaping([ArtistsModel]) -> Void)
    func getImage(url: URL, complition: @escaping(Data) -> Void)
}

class SearchViewModel: SearchViewModelProtocol {
    private let searchViewModelUseCase: SearchViewModelUseCaseProcol
    
    init(searchViewModelUseCase: SearchViewModelUseCaseProcol) {
        self.searchViewModelUseCase = searchViewModelUseCase
    }
    
    func searchViewModelUseCase(music: String, completion: @escaping(SearchModel) -> Void) {
        searchViewModelUseCase.searchMusic(music: music, completion: completion)
    }
    
    func searchItens(music: String, completion: @escaping([ArtistsModel]) -> Void) {
        _ = searchViewModelUseCase.searchMusic(music: music, completion: { searchModel in
            guard let result = searchModel.data else { return }
            completion(result)
        })
    }
    
    func getImage(url: URL, complition: @escaping(Data) -> Void) {
        URLSession.shared.dataTask(with: url, completionHandler: { data, _, _ in
            if let data = data {
                complition(data)
            }
        }).resume()
    }
}
