//
//  TextFieldDefault.swift
//  MeusGastos
//
//  Created by Alan Pitanga on 15/01/24.
//

import Foundation
import UIKit

class TextFieldDefault: UITextField {
    
    init(placeHolder: String) {
        super.init(frame: .zero)
        initDefault(placeHolder: placeHolder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(placeHolder: String) {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 1
        self.backgroundColor = .lightGray
        self.placeholder = placeHolder
    }
    
}
