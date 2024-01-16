//
//  RegisterCoordinator.swift
//  MeusGastos
//
//  Created by Alan Pitanga on 16/01/24.
//

import UIKit

final class RegisterCoordinator: Coordinator {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = RegisterViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
