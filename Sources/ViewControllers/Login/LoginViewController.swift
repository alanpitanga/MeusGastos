//
//  LoginViewController.swift
//  MeusGastos
//
//  Created by Alan Pitanga on 15/11/23.
//

import UIKit
import Foundation

final class LoginViewController: ViewControllerDefault {
    var onRegisterTap: (() -> Void)?
    var onLoginTap: (() -> Void)?
    
    lazy var loginView: LoginView = {
        let view = LoginView()
        view.backgroundColor = .white
        view.onRegisterTap = {
            self.onRegisterTap?()
        }
        
        view.onLoginTap = {
            self.onLoginTap?()
        }
        
        return view
    }()
    
    override func loadView() {
        self.view = loginView
    }
}
