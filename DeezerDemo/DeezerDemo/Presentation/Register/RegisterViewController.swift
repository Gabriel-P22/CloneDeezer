//
//  RegisterViewController.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 01/08/22.
//

import Foundation
import UIKit

class RegisterViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    
    let registerView = RegisterView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = registerView
        
        registerView.cancelBtn.addTarget(self, action: #selector(cancelTapped), for: .touchUpInside)
    }
    
    @objc func cancelTapped() {
        dismiss(animated: true)
        let vc = LoginViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
    }
    
}
