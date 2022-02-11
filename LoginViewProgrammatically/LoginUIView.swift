//
//  LoginUIView.swift
//  LoginViewProgrammatically
//
//  Created by Hiren on 11/02/22.
//

import UIKit

private let nameTextField : UITextField = {
    let nameTextField = UITextField(frame: .zero)
    nameTextField.placeholder = "login here"
    nameTextField.borderStyle = .roundedRect
    nameTextField.translatesAutoresizingMaskIntoConstraints = false

    return nameTextField
}()


private let passwordTextField : UITextField = {
let passwordTextField = UITextField(frame: .zero)
    passwordTextField.placeholder = "password here"
    passwordTextField.isSecureTextEntry = true
    passwordTextField.borderStyle = .roundedRect
    passwordTextField.translatesAutoresizingMaskIntoConstraints = false

    return passwordTextField
}()

private let loginButton : UIButton = {
 let loginButton = UIButton(frame: CGRect(x: 0, y: 0, width: 500, height: 15))
    loginButton.setTitle("LOGIN", for: .normal)
    loginButton.backgroundColor = .lightGray
    loginButton.translatesAutoresizingMaskIntoConstraints = false
    return loginButton
}()

class LoginUIView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)

        self.addSubview(loginButton)
        self.addSubview(nameTextField)
        self.addSubview(passwordTextField)

        self.buttonConstraintsInit()
        self.passwordConstraintsInit()
        self.loginhereConstraintsInit()

    }
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func buttonConstraintsInit() {
        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            loginButton.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant: -5)
        ])
    }

    private func passwordConstraintsInit() {
        NSLayoutConstraint.activate([

            passwordTextField.bottomAnchor.constraint(equalTo: loginButton.topAnchor,constant: -20),
            passwordTextField.leadingAnchor.constraint(equalTo: self.readableContentGuide.leadingAnchor,constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: self.readableContentGuide.trailingAnchor,constant: -20)
        ])
    }

    private func loginhereConstraintsInit() {
        NSLayoutConstraint.activate([

            nameTextField.bottomAnchor.constraint(equalTo: passwordTextField.topAnchor,constant: -15),
            nameTextField.leadingAnchor.constraint(equalTo: self.readableContentGuide.leadingAnchor,constant: 20),
            nameTextField.trailingAnchor.constraint(equalTo: self.readableContentGuide.trailingAnchor,constant: -20)
        ])
    }

}
