//
//  Coordinator.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 01/08/22.
//

import Foundation
import UIKit

enum Event {
    case loginSucess
    case register
    case logout
}

protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    
    func eventCurrent(with type: Event)
    func start()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
