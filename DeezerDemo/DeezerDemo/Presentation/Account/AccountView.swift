//
//  AccountView.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 01/08/22.
//

import Foundation
import UIKit

class AccountView: UIView {
    
    lazy var logoutButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .systemPink
        btn.setTitle("Logout", for: .normal)
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
        backgroundColor = .white
        
        addSubview(logoutButton)
        configureConstraints()
    }
    
    func configureConstraints() {
        NSLayoutConstraint.activate([
            logoutButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            logoutButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            logoutButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            logoutButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
}
