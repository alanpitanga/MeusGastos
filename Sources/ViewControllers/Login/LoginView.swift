//
//  LoginView.swift
//  MeusGastos
//
//  Created by Alan Pitanga on 21/11/23.
//

import UIKit

final class LoginView: UIView {
    
    //Mark: elemnts visuals
    let titleLabel = LabelDefault(text: "Login", font: UIFont.systemFont(ofSize: 25, weight: .semibold))
    
    let emailLabel = LabelDefault(text: "E-mail")
    
    let emailTextField = TextFieldDefault(placeHolder: "Informe seu E-mail", keyboardType: .emailAddress)
    
    let passwordLabel = LabelDefault(text: "Senha")
    
    let passwordTextField = TextFieldDefault(placeHolder: "Digite sua senha", isSecureTextEntry: true)
    
    let buttonLogin = ButtonDefault(title: "Entrar")
    
    let buttonRegister = ButtonDefault(title: "Registrar")
        
    //Mark: Inits
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setElementVisual()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setElementVisual() {
        setLogin()
        setEmail()
        setPassword()
        setButtonLogin()
        setButtonRegister()
    }
    
    private func setLogin() {
        self.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 80),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
        ])
    }
    
    private func setEmail() {
        self.addSubview(emailLabel)
        self.addSubview(emailTextField)
        
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
            emailLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            emailLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
            
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 12),
            emailTextField.leadingAnchor.constraint(equalTo: emailLabel.leadingAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: emailLabel.trailingAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setPassword() {
        self.addSubview(passwordLabel)
        self.addSubview(passwordTextField)
        
        NSLayoutConstraint.activate([
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 30),
            passwordLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            passwordLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 12),
            passwordTextField.leadingAnchor.constraint(equalTo: passwordLabel.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: passwordLabel.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setButtonLogin() {
        self.addSubview(buttonLogin)
        
        NSLayoutConstraint.activate([
            buttonLogin.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
            buttonLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            buttonLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
            buttonLogin.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setButtonRegister() {
        self.addSubview(buttonRegister)
        
        NSLayoutConstraint.activate([
            buttonRegister.topAnchor.constraint(equalTo: buttonLogin.bottomAnchor, constant: 30),
            buttonRegister.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 24),
            buttonRegister.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
            buttonRegister.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
