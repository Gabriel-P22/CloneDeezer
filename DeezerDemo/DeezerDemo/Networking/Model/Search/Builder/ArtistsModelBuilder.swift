//
//  ArtistsModelBuilder.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 02/08/22.
//

import Foundation

final class ArtistsModelBuilder {
    private var artistsModel = ArtistsModel()
    
    func withId(id: Int?) -> ArtistsModelBuilder {
        self.artistsModel.id = id
        return self
    }
    
    func withReadable(readable: Bool?) -> ArtistsModelBuilder {
        self.artistsModel.readable = readable
        return self
    }
    
    func withTitle(title: String?)  -> ArtistsModelBuilder {
        self.artistsModel.title = title
        return self
    }
    
    func withTitleShort(titleShort: String?)  -> ArtistsModelBuilder {
        self.artistsModel.title_short = titleShort
        return self
    }
    
    func withTitleVersion(titleVersion: String?)  -> ArtistsModelBuilder {
        self.artistsModel.title_version = titleVersion
        return self
    }
    
    func withDuration(duration: Int?)  -> ArtistsModelBuilder {
        self.artistsModel.duration = duration
        return self
    }
    
    func withRank(rank: Int?)  -> ArtistsModelBuilder {
        self.artistsModel.rank = rank
        return self
    }
    
    func withExplicit_lyrics(explicitLyrics: Bool?)  -> ArtistsModelBuilder {
        self.artistsModel.explicit_lyrics = explicitLyrics
        return self
    }
    
    func withExplicitContentLyrics(explicitContentLyrics: Int?)  -> ArtistsModelBuilder {
        self.artistsModel.explicit_content_lyrics = explicitContentLyrics
        return self
    }
    
    func withExplicit_content_cover(explicitContentCover: Int?)  -> ArtistsModelBuilder {
        self.artistsModel.explicit_content_cover = explicitContentCover
        return self
    }
    
    func withPreview(preview: String?)  -> ArtistsModelBuilder {
        self.artistsModel.preview = preview
        return self
    }
    
    func withMd5Image(md5Image: String?)  -> ArtistsModelBuilder {
        self.artistsModel.md5_image = md5Image
        return self
    }
    
    func withArtist(artist: ArtistModel?)  -> ArtistsModelBuilder {
        self.artistsModel.artist = artist
        return self
    }
    
    func withAlbum(album: AlbumModel?)  -> ArtistsModelBuilder {
        self.artistsModel.album = album
        return self
    }
    
    func withType(type: String?)  -> ArtistsModelBuilder {
        self.artistsModel.type = type
        return self
    }
    
    func build() -> ArtistsModel {
        artistsModel
    }
}

