//
//  SearchCell.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 02/08/22.
//

import UIKit

class SearchCell: UITableViewCell {

    static let identifier: String = "SearchCell"
    
    lazy var musicName: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    lazy var albumImage: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    override func layoutSubviews() {
        config()
    }

    func config() {
        addSubview(musicName)
        addSubview(albumImage)
        setConstraints()
        
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            albumImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            albumImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            albumImage.widthAnchor.constraint(equalToConstant: 60),
            albumImage.heightAnchor.constraint(equalToConstant: 60),
            
            musicName.leadingAnchor.constraint(equalTo: albumImage.trailingAnchor, constant: 16),
            musicName.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
    
}
