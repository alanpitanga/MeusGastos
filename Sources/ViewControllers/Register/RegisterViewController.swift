//
//  RegisterViewController.swift
//  MeusGastos
//
//  Created by Alan Pitanga on 16/01/24.
//

import Foundation
import UIKit

final class RegisterViewController: ViewControllerDefault {
    var onLoginTap: (() -> Void)?
    
    lazy var registerView: RegisterView = {
        let view = RegisterView()
        view.backgroundColor = .white
        view.onLoginTap = {
            self.onLoginTap?()
        }
        
        return view
    }()
    
    override func loadView() {
        self.view = registerView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}	
