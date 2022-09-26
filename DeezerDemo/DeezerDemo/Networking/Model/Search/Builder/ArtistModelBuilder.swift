//
//  ArtistModelBuilder.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 02/08/22.
//

import Foundation

final class ArtistModelBuilder {
    private var artistModel = ArtistModel()
    
    func withId(id: Int?)  -> ArtistModelBuilder {
        self.artistModel.id = id
        return self
    }
    
    func withName(name: String?)  -> ArtistModelBuilder {
        self.artistModel.name = name
        return self
    }
    
    func withLink(link: String?)  -> ArtistModelBuilder {
        self.artistModel.link = link
        return self
    }
    
    func withPicture(picture: String?)  -> ArtistModelBuilder {
        self.artistModel.picture = picture
        return self
    }
    
    func withPictureSmall(pictureSmall: String?)  -> ArtistModelBuilder {
        self.artistModel.picture_small = pictureSmall
        return self
    }
    
    func withPictureMedium(pictureMedium: String?)  -> ArtistModelBuilder {
        self.artistModel.picture_medium = pictureMedium
        return self
    }
    
    func withPictureBig(pictureBig: String?)  -> ArtistModelBuilder {
        self.artistModel.picture_big = pictureBig
        return self
    }
    
    func withpictureXl(pictureXl: String?)  -> ArtistModelBuilder {
        self.artistModel.picture_xl = pictureXl
        return self
    }
    
    func withTracklist(tracklist: String?)  -> ArtistModelBuilder {
        self.artistModel.tracklist = tracklist
        return self
    }
    
    func withType(type: String?)  -> ArtistModelBuilder {
        self.artistModel.type = type
        return self
    }
    
    func build() -> ArtistModel {
        artistModel
    }
    
}
