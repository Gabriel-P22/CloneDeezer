//
//  RegisterView.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 01/08/22.
//

import Foundation
import UIKit

class RegisterView: UIView {
    
    let cancelBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Cancel", for: .normal)
        btn.backgroundColor = .systemPink
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
        addSubview(cancelBtn)
        setConstraints()
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            cancelBtn.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30),
            cancelBtn.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            cancelBtn.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            cancelBtn.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
