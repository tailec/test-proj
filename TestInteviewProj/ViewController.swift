//
//  ViewController.swift
//  TestInteviewProj
//
//  Created by krawiecp on 13/07/2022.
//

import UIKit

class ViewController: UIViewController {
    private let viewModel: ViewModel
    private let usernameTextField = UITextField()
    private let passwordTextField = UITextField()
    private let loginButton = UIButton()
    
    init(viewModel: ViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        renderUI()
    }
    
    @objc private func loginButtonDidTap(_ sender: UIButton) {
        // TODO:
    }
    
    private func renderUI() {
        view.backgroundColor = .white
        
        usernameTextField.placeholder = "Your username"
        usernameTextField.borderStyle = .roundedRect
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(usernameTextField)
        
        passwordTextField.placeholder = "Your password"
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordTextField)
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = .systemTeal
        loginButton.addTarget(self, action: #selector(loginButtonDidTap(_:)), for: .touchUpInside)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loginButton)
        
        view.addConstraints([
            usernameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}
