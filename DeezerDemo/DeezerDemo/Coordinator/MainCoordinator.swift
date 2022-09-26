//
//  MainCoordinator.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 01/08/22.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?
    
    func eventCurrent(with type: Event) {
        switch type {
        case .loginSucess:
            var vc: UIViewController & Coordinating = HomeViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
        case .register:
            var vc: UIViewController & Coordinating = RegisterViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
        case .logout:
            var vc: UIViewController & Coordinating = LoginViewController()
            vc.coordinator = self
            vc.modalPresentationStyle = .fullScreen
            navigationController?.topMostController().present(vc, animated: true)
        }
    }
    
    func start() {
        var vc: UIViewController & Coordinating = LoginViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: false)
    }
}
