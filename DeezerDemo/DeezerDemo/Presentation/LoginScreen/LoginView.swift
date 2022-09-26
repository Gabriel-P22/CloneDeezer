//
//  LoginView.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 01/08/22.
//

import Foundation
import UIKit

class LoginView: UIView {

    lazy var loginLabel: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = "Fazer Login"
        text.font = .systemFont(ofSize: 24, weight: .semibold)
        return text
    }()
    
    lazy var emailLabel: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = "E-mail"
        text.font = .systemFont(ofSize: 12, weight: .semibold)
        return text
    }()
    
    lazy var passwordLabel: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = "Password"
        text.font = .systemFont(ofSize: 12, weight: .semibold)
        return text
    }()
    
    lazy var emailField: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.borderStyle = .roundedRect
        
        return field
    }()
    
    lazy var passwordField: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.borderStyle = .roundedRect
        return field
    }()
    
    var loginButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .systemPink
        btn.setTitle("Login", for: .normal)
        return btn
    }()
    
    var signInButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .systemPink
        btn.setTitle("Register", for: .normal)
        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        config()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func config() {
        addSubview(loginLabel)
        addSubview(emailField)
        addSubview(emailLabel)
        addSubview(passwordField)
        addSubview(passwordLabel)
        addSubview(loginButton)
        addSubview(signInButton)
        setConstraints()
    }
    
    public func startAnimation() {
        let gradientLayer = CAGradientLayer()
        let animation = CABasicAnimation(keyPath: "locations")
        gradientLayer.frame = bounds
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.colors = [
            UIColor.white.cgColor,
            UIColor(red: 0.23, green: 0.27, blue: 0.29, alpha: 1.00).cgColor
        ]
        gradientLayer.locations = [0, 0.4]
        animation.fromValue = [0.4, 0.4]
        animation.toValue = [1, 1]
        animation.duration = 4
        animation.repeatCount = Float.infinity
        animation.autoreverses = true
        gradientLayer.add(animation, forKey: nil)
        layer.addSublayer(gradientLayer)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: topAnchor, constant: 110),
            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            emailField.centerXAnchor.constraint(equalTo: centerXAnchor),
            emailField.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -110),
            emailField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            emailField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            
            emailLabel.bottomAnchor.constraint(equalTo: emailField.topAnchor, constant: -6),
            emailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            emailLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            
            passwordField.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 42),
            passwordField.centerXAnchor.constraint(equalTo: centerXAnchor),
            passwordField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            passwordField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            
            passwordLabel.bottomAnchor.constraint(equalTo: passwordField.topAnchor, constant: -6),
            passwordLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            passwordLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            
            loginButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 128),
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            loginButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            loginButton.heightAnchor.constraint(equalToConstant: 40),
            
            signInButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 30),
            signInButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            signInButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            signInButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
}
