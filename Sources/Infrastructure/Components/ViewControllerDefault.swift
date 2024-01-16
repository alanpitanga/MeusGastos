//
//  ViewControllerDefault.swift
//  MeusGastos
//
//  Created by Alan Pitanga on 16/01/24.
//

import Foundation
import UIKit

class ViewControllerDefault: UIViewController {
    var afterHideKeyboard: (() -> Void)?
    var afterShowKeyboard: ((_ heightKeyboard: CGFloat) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let _: NSObjectProtocol = NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil) {(notification) in
            guard let value = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else
            { return }
            self.afterShowKeyboard?(value.cgRectValue.height)
        }
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboardByTappingOutSide))
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func hideKeyboardByTappingOutSide() {
        self.view.endEditing(true)
        afterHideKeyboard?()
    }
}
