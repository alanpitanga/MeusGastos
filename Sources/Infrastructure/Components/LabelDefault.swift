//
//  LabelDefault.swift
//  MeusGastos
//
//  Created by Alan Pitanga on 15/01/24.
//

import Foundation
import UIKit

class LabelDefault: UILabel {
    
    init(text: String) {
        super.init(frame: .zero)
        
        initDefault(text: text, font: UIFont.systemFont(ofSize: 17, weight: .semibold))
    }
    
    init(text: String, font: UIFont) {
        super.init(frame: .zero)
        
        initDefault(text: text, font: font)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(text: String, font: UIFont) {
        self.text = text
        self.font = font
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
