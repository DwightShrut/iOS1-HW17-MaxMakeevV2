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
        loginTextField.setLeftIcon(UIImage(systemName: "person.circle")!)
        let rightIcon = UIImage(named: "right")!
        loginTextField.setRightIcon(rightIcon)
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
        passwordTextField.setLeftIcon(UIImage(systemName: "lock")!)
        return passwordTextField
    }()
    
    //MARK: LoginButton Stack
    
    private lazy var loginButtonStackView: UIStackView = {
        let loginButtonStackView = UIStackView(arrangedSubviews: [loginButton, forgotPasswordButton])
        loginButtonStackView.axis = .vertical
        loginButtonStackView.distribution = .fillProportionally
        loginButtonStackView.spacing = 10
        loginButtonStackView.contentMode = .scaleToFill
        loginButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        return loginButtonStackView
    }()
    
    private lazy var loginButton: UIButton = {
        let loginButton = UIButton(type: .system)
        loginButton.layer.cornerRadius = 20
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.backgroundColor = #colorLiteral(red: 0.4199445248, green: 0.3708131313, blue: 1, alpha: 1)
        loginButton.configuration?.cornerStyle = .capsule
        loginButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        return loginButton
    }()
    
    private lazy var forgotPasswordButton: UIButton = {
        let forgotPasswordButton = UIButton(type: .system)
        forgotPasswordButton.setTitle("Forgot your password?", for: .normal)
        forgotPasswordButton.setTitleColor(.white, for: .normal)
        return forgotPasswordButton
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
        view.addSubview(loginButtonStackView)
    }
    
    private func setupApp() {
        //MARK: Backgroung ImageView constraints
        
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        
        //MARK: - Login Label contstraints
        
        loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginLabel.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 55).isActive = true
        
        //MARK: - Login StackView constraints
        
        loginStackView.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 25).isActive = true
        loginStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        loginStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        
        //MARK: - LoginButton StackView constraints
            
        loginButtonStackView.topAnchor.constraint(equalTo: loginStackView.bottomAnchor, constant: 35).isActive = true
        loginButtonStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        loginButtonStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
    }
}

//MARK: - Extension to Textfield

extension UITextField {
    func setLeftIcon(
        _ image: UIImage) {
            let iconView = UIImageView(frame: CGRect(x: 20, y: 5, width: 20, height: 20))
            iconView.image = image
            let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 60, height: 30))
            iconContainerView.addSubview(iconView)
            leftView = iconContainerView
            leftViewMode = .always
        }
    
    func setRightIcon(
        _ image: UIImage) {
            let iconView = UIImageView(frame: CGRect(x: -10, y: 5, width: 20, height: 20))
            iconView.image = image
            let iconContainerView: UIView = UIView(frame: CGRect(x: 100, y: 0, width: 30, height: 30))
            iconContainerView.addSubview(iconView)
            rightView = iconContainerView
            rightViewMode = .always
        }
}

