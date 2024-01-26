//
//  InputOutputViewDefault.swift
//  MeusGastos
//
//  Created by Alan Pitanga on 25/01/24.
//

import Foundation
import UIKit

enum TypeEntry {
    case Input
    case Output
}

final class ViewInputOutputDefault: UIView {
    
    var typeEntry: TypeEntry
    
    lazy var icon: UIImageView = {
        
        let imageView = UIImageView(image: UIImage(named: ""))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .white
        
        return imageView
    }()
    
    lazy var valueLabel = LabelDefault(text: "", font: UIFont.systemFont(ofSize: 25, weight: .bold))
    
    lazy var titleLabel = LabelDefault(text: "", font: UIFont.systemFont(ofSize: 14, weight: .light))
    
     init(typeEntry: TypeEntry) {
        
        self.typeEntry = typeEntry
        super.init(frame: .zero)
        setElementVisual()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setElementVisual() {
        setTypeEntry()
        setIcon()
        setValueLabel()
        setTitle()
    }
    
    private func setTypeEntry() {
        switch self.typeEntry {
        
        case .Input:
            icon.image = UIImage(named: "")
            valueLabel.text = "R$ 0,000"
            titleLabel.text = "Entrada de Valores"
            self.backgroundColor = .inputsColor
            
        case .Output:
            icon.image = UIImage(named: "")
            valueLabel.text = "R$ 0,000"
            titleLabel.text = "Saída de Valores"
            self.backgroundColor = .outputsColor
        }
    }
    
    func setValue(value: Double) {
        valueLabel.text = String(value)
    }
    
    private func setIcon() {
        self.addSubview(icon)
        
        NSLayoutConstraint.activate([
            icon.topAnchor.constraint(equalTo: self.topAnchor, constant: 12),
            icon.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            icon.widthAnchor.constraint(equalToConstant: 24),
            icon.heightAnchor.constraint(equalToConstant: 24)
        ])
    }
    
    private func setValueLabel() {
        self.addSubview(valueLabel)
        valueLabel.textAlignment = .center
        valueLabel.adjustsFontSizeToFitWidth = true
        valueLabel.minimumScaleFactor = 0.5
        
        NSLayoutConstraint.activate([
            valueLabel.topAnchor.constraint(equalTo: icon.bottomAnchor, constant: 12),
            valueLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            valueLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12)
        ])
    }
    
    private func setTitle() {
        self.addSubview(titleLabel)
        titleLabel.textAlignment = .center
        titleLabel.adjustsFontSizeToFitWidth = true
        titleLabel.minimumScaleFactor = 0.5
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: valueLabel.bottomAnchor, constant: 4),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12)
        ])
    }
}
