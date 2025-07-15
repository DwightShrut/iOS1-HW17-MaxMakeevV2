//
//  ViewController.swift
//  iOS1-HW17-MaxMakeevV2
//
//  Created by Макс Макеев on 15.07.2025.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - ImageView
    
    private lazy var imageView: UIImageView = {
        let image = UIImage(named:"background")
        let imageView = UIImageView(image:image)
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    //MARK: - Login Label
    
    private lazy var loginLabel: UILabel = {
        let loginLabel = UILabel()
        loginLabel.text = "Login"
        loginLabel.textColor = .white
        loginLabel.font = .systemFont(ofSize: 35, weight: .regular)
        loginLabel.textAlignment = .center
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        return loginLabel
    }()
    
    //MARK: - Login Stack
    
    private lazy var loginStackView: UIStackView = {
        let loginStackView = UIStackView(arrangedSubviews: [loginTextField, passwordTextField])
        loginStackView.axis = .vertical
        loginStackView.distribution = .fillEqually
        loginStackView.spacing = 11
        loginStackView.contentMode = .scaleToFill
        loginStackView.translatesAutoresizingMaskIntoConstraints = false
        return loginStackView
    }()
    
    private lazy var loginTextField: UITextField = {
        let loginTextField = UITextField()
        loginTextField.placeholder = "max@icloud.com"
        loginTextField.textColor = .black
        loginTextField.font = .systemFont(ofSize: 14)
        loginTextField.layer.cornerRadius = 20
        loginTextField.backgroundColor = .white
        loginTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        return loginTextField
    }()
    
    private lazy var passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.placeholder = "Password"
        passwordTextField.textColor = .black
        passwordTextField.font = .systemFont(ofSize: 14)
        passwordTextField.layer.cornerRadius = 20
        passwordTextField.backgroundColor = .white
        passwordTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        return passwordTextField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupApp()
        // Do any additional setup after loading the view.
    }
    
    private func setupHierarchy() {
        view.addSubview(imageView)
        view.addSubview(loginLabel)
        view.addSubview(loginStackView)
    }
    
    private func setupApp() {
        //MARK: Backgroung ImageView constraints
        
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        
        //MARK: - Login Label contstraints
        loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginLabel.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 116).isActive = true
        
        //MARK: - Login StackView constraints
        loginStackView.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 25).isActive = true
        loginStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        loginStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
    }
    
    @objc private func buttonPressed() {
        
    }
}

