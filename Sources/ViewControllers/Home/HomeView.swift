//
//  HomeView.swift
//  MeusGastos
//
//  Created by Alan Pitanga on 23/01/24.
//

import Foundation
import UIKit

final class HomeView: UIView {
    
    lazy var segmentedControl: UISegmentedControl = {
        let segment = UISegmentedControl(items: ["Essa semana", "Esse mês", "Todos"])
        segment.translatesAutoresizingMaskIntoConstraints = false
        segment.selectedSegmentIndex = 1
        segment.backgroundColor = .lightGray
        return segment
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setElementVisual()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setElementVisual() {
        setSegmented()
    }
    
    private func setSegmented() {
        self.addSubview(segmentedControl)
        
        NSLayoutConstraint.activate([
            segmentedControl.topAnchor.constraint(equalTo: self.topAnchor, constant: 70),
            segmentedControl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12),
            segmentedControl.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -12)
        ])
    }
}
