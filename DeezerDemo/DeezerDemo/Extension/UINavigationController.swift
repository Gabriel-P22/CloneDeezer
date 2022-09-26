//
//  UINavigationController.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 02/08/22.
//

import Foundation
import UIKit

extension UINavigationController {
    func topMostController() -> UIViewController {
        guard var topController = UIApplication.shared.keyWindow?.rootViewController else {
            return self
        }
        topController = topController.presentedViewController ?? topController
        return topController
    }
}

