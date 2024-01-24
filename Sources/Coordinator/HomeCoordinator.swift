//
//  HomeCoordinator.swift
//  MeusGastos
//
//  Created by Alan Pitanga on 23/01/24.
//

import Foundation
import UIKit

final class HomeCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = HomeViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
