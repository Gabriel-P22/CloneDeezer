//
//  HomeViewController.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 01/08/22.
//

import Foundation
import UIKit

public protocol LogoutProtocol {
    func onLogoutClicked()
}

class HomeViewController: UIViewController, Coordinating, LogoutProtocol {
    var coordinator: Coordinator?
    let home = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = home
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: UIView())
        home.configTabBar(logoutDelegate: self)
        present(home.tabBar, animated: false)
    }
    
    func onLogoutClicked() {
        dismiss(animated: false)
        coordinator?.start()
    }
}


