//
//  LoginView.swift
//  MeusGastos
//
//  Created by Alan Pitanga on 21/11/23.
//

import UIKit

final class LoginView: UIView {
    
    //Mark: elemnts visuals
    let emailLabel: UILabel = {
        let lb = UILabel()
        lb.text = "Email"
        lb.translatesAutoresizingMaskIntoConstraints = false

        return lb
    }()
    
    let emailTextField: UITextField = {
        let tf = UITextField()
        
        return tf
    }()
    
    //Mark: Inits
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setElementVisual()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setElementVisual() {
        setEmail()
    }
    
    private func setEmail() {
        self.addSubview(emailLabel)
        
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            emailLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            emailLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24)
        ])
    }
}
