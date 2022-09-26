//
//  SearchViewModelUseCaseProcol.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 02/08/22.
//

import Foundation

protocol SearchViewModelUseCaseProcol {
    func searchMusic(music: String, completion: @escaping(SearchModel) -> Void) 
}
