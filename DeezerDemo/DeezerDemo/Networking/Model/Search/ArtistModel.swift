//
//  ArtistModel.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 02/08/22.
//

import Foundation

struct ArtistModel: Decodable {
    var id: Int?
    var name: String?
    var link: String?
    var picture: String?
    var picture_small: String?
    var picture_medium: String?
    var picture_big: String?
    var picture_xl: String?
    var tracklist: String?
    var type: String?
}
