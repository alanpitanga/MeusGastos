//
//  ButtonDefault.swift
//  MeusGastos
//
//  Created by Alan Pitanga on 15/01/24.
//

import Foundation
import UIKit

class ButtonDefault: UIButton {
    
    init(title: String) {
        super.init(frame: .zero)
        
        initDefault(title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initDefault(title: String) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setTitle(title, for: .normal)
        self.backgroundColor = .blue
        self.layer.cornerRadius = 15
    }
}
