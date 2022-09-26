//
//  AlbumModelBuilder.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 02/08/22.
//

import Foundation

final class AlbumModelBuilder {
    
    private var albumModel = AlbumModel()
    
    func withId(id: Int?)  -> AlbumModelBuilder {
        self.albumModel.id = id
        return self
    }
    
    func withTitle(title: String?)  -> AlbumModelBuilder {
        self.albumModel.title = title
        return self
    }
    
    func withCover(cover: String?)  -> AlbumModelBuilder {
        self.albumModel.cover = cover
        return self
    }
    
    func withCoverSmall(coverSmall: String?)  -> AlbumModelBuilder {
        self.albumModel.cover_small = coverSmall
        return self
    }
    
    func withCoverMedium(coverMedium: String?)  -> AlbumModelBuilder {
        self.albumModel.cover_medium = coverMedium
        return self
    }
    
    func withCoverBig(coverBig: String?)  -> AlbumModelBuilder {
        self.albumModel.cover_big = coverBig
        return self
    }
    
    
    func withCoverXl(coverXl: String?)  -> AlbumModelBuilder {
        self.albumModel.cover_xl = coverXl
        return self
    }
    
    func withMd5Image(md5Image: String?)  -> AlbumModelBuilder {
        self.albumModel.md5_image = md5Image
        return self
    }
    
    func withTracklist(tracklist: String?)  -> AlbumModelBuilder {
        self.albumModel.tracklist = tracklist
        return self
    }
    
    func withType(type: String?)  -> AlbumModelBuilder {
        self.albumModel.type = type
        return self
    }
    
    func build() -> AlbumModel {
        albumModel
    }
}
