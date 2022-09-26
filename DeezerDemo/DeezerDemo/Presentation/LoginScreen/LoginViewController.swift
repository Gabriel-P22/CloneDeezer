//
//  LoginViewController.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 01/08/22.
//

import Foundation
import UIKit

class LoginViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    
    private let loginView = LoginView.init()
    
    private let email = ""
    private let password = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = loginView
        loginView.loginButton.addTarget(self, action: #selector(login), for: .touchUpInside)
        loginView.signInButton.addTarget(self, action: #selector(register), for: .touchUpInside)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        enabledBackGroundTheme()
        loginView.config()
    }
    
    func enabledBackGroundTheme() {
        loginView.startAnimation()
    }
    
    @objc func login() {
        if loginView.emailField.text == email && loginView.passwordField.text == password {
            print("Senha correta")
            dismiss(animated: true)
            coordinator?.eventCurrent(with: .loginSucess)
        } else {
            print("Senha incorreta")
        }
    }
    
    @objc func register() {
        print("register")
        let vc = RegisterViewController()
        dismiss(animated: true)
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
}
