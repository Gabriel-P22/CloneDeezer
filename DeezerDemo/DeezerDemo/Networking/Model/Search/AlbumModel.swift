//
//  AlbumModel.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 02/08/22.
//

import Foundation

struct AlbumModel: Decodable {
    var id: Int?
    var title: String?
    var cover: String?
    var cover_small: String?
    var cover_medium: String?
    var cover_big: String?
    var cover_xl: String?
    var md5_image: String?
    var tracklist: String?
    var type: String?
}
