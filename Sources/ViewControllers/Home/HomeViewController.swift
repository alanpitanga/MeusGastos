//
//  HomeViewController.swift
//  MeusGastos
//
//  Created by Alan Pitanga on 23/01/24.
//

import Foundation
import UIKit

final class HomeViewController: UIViewController {
    private lazy var homeView: HomeView = {
        let view = HomeView()
        view.backgroundColor = .white
        return view
    }()
    
    override func loadView() {
        self.view = homeView
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.title = "Meus Gastos"
    }
}
