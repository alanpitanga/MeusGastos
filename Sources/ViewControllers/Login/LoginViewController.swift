//
//  LoginViewController.swift
//  MeusGastos
//
//  Created by Alan Pitanga on 15/11/23.
//

import UIKit
import Foundation

final class LoginViewController: ViewControllerDefault {
    
    lazy var loginView: LoginView = {
        let view = LoginView()
        view.backgroundColor = .white
        
        return view
    }()
    
    override func loadView() {
        self.view = loginView
    }
}
