//
//  TextFieldDefault.swift
//  MeusGastos
//
//  Created by Alan Pitanga on 15/01/24.
//

import Foundation
import UIKit

class TextFieldDefault: UITextField {
    
    let padding = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 0)
    
    init(placeHolder: String, keyboardType: UIKeyboardType = .default) {
        super.init(frame: .zero)
        initDefault(placeHolder: placeHolder)
        self.keyboardType = keyboardType
    }
    
    init(placeHolder: String, isSecureTextEntry: Bool) {
        super.init(frame: .zero)
        initDefault(placeHolder: placeHolder)
        self.isSecureTextEntry = isSecureTextEntry
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
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
}
