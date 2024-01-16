//
//  RegisterViewController.swift
//  MeusGastos
//
//  Created by Alan Pitanga on 16/01/24.
//

import Foundation
import UIKit

final class RegisterViewController: ViewControllerDefault {
    lazy var registerView: RegisterView = {
        let view = RegisterView()
        view.backgroundColor = .red
        
        return view
    }()
    
    override func loadView() {
        self.view = registerView
    }
}
