//
//  Account.swift
//  DeezerDemo
//
//  Created by Gabriel Paschoal on 01/08/22.
//

import Foundation
import UIKit

class AccountViewController: UIViewController {
    var logoutProtocol: LogoutProtocol?
    
    let accountView = AccountView.init()
    
    init(logoutProtocol: LogoutProtocol) {
        super.init(nibName: nil, bundle: nil)
        self.logoutProtocol = logoutProtocol
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = accountView
        accountView.logoutButton.addTarget(self, action: #selector(logout), for: .touchUpInside)
    }
    
    @objc func logout() {
        print("logout")
        logoutProtocol?.onLogoutClicked()
    }
}
