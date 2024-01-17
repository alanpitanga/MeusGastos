//
//  LoginCoordinator.swift
//  MeusGastos
//
//  Created by Alan Pitanga on 15/11/23.
//

import UIKit

final class LoginCoordinator: Coordinator {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = LoginViewController()
        
        viewController.onRegisterTap = {
            self.goToRegister()
        }
        
        navigationController.pushViewController(viewController, animated: true)
    }
    
    private func goToRegister() {
        let coordinator = RegisterCoordinator(navigationController: self.navigationController)
        coordinator.start()
    }

}
