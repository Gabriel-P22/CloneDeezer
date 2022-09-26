//
//  ArtistModel.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 02/08/22.
//

import Foundation

struct ArtistsModel: Decodable {
    var id: Int?
    var readable: Bool?
    var title: String?
    var title_short: String?
    var title_version: String?
    var link: String?
    var duration: Int?
    var rank: Int?
    var explicit_lyrics: Bool?
    var explicit_content_lyrics: Int?
    var explicit_content_cover: Int?
    var preview: String?
    var md5_image: String?
    var artist: ArtistModel?
    var album: AlbumModel?
    var type: String?
}
