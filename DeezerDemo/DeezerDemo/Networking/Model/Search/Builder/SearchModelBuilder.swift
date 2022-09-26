//
//  SearchModelBuilder.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 02/08/22.
//

import Foundation

final class SearchModelBuilder {
    private var searchModel = SearchModel()
    
    func withSearchModel(data: [ArtistsModel]) -> SearchModelBuilder {
        self.searchModel.data = data
        return self
    }
    
    func build() -> SearchModel {
        searchModel
    }
    
}
