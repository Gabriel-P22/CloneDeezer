//
//  SearchModelDTO.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 02/08/22.
//

import Foundation

struct SearchModelDTO {
    var data: [ArtistsModel]?
    
    init(data: [ArtistsModel] = []) {
        self.data = data
    }
    
    func toModel() -> SearchModel {
        SearchModelBuilder()
            .withSearchModel(data: data ?? [])
            .build()
    }
    
    static func fromSearchModel(searchViewModel: SearchModel) -> SearchModelDTO {
        SearchModelDTO(data: searchViewModel.data ?? [])
    }
    
}
