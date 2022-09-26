//
//  HomeView.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 01/08/22.
//

import Foundation
import UIKit

class HomeView: UIView {
    
    let tabBar = UITabBarController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    public func configTabBar(logoutDelegate: LogoutProtocol) {
        let songList = UINavigationController(rootViewController: SongListViewController())
        let favoriteSongs = UINavigationController(rootViewController: FavoriteSongsViewController())
        let search = UINavigationController(rootViewController: SearchViewController())
        let account = UINavigationController(rootViewController: AccountViewController(logoutProtocol: logoutDelegate))

        
        tabBar.setViewControllers([songList, favoriteSongs, search, account], animated: true)
        
        guard let item = tabBar.tabBar.items else { return }
        
        item[0].title = "SongList"
        item[0].image = UIImage(systemName: "music.note")
        
        item[1].title = "FavoriteSongs"
        item[1].image = UIImage(systemName: "heart")
        
        item[2].title = "Search"
        item[2].image = UIImage(systemName: "magnifyingglass")
        
        item[3].title = "Account"
        item[3].image = UIImage(systemName: "person")
        
        tabBar.modalPresentationStyle = .fullScreen
        tabBar.tabBar.barStyle = .default
        tabBar.tabBar.tintColor = .systemPink
        tabBar.tabBar.backgroundColor = .white
        tabBar.tabBar.isTranslucent = false
        
        UINavigationBar.appearance().tintColor = .white
    }
    
}
