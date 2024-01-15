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
        
        initDefault(text: text)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(text: String) {
        self.text = text
        self.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
