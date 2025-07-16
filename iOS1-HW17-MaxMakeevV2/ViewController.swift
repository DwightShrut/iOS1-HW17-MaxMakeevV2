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
    
    //MARK: - "Connect with" Stack
    
    private lazy var connectWithStack: UIStackView = {
        let connectWithStack = UIStackView(arrangedSubviews: [line1, connectWithnLabel, line2])
        connectWithStack.axis = .horizontal
        connectWithStack.alignment = .center
        connectWithStack.distribution = .fillEqually
        connectWithStack.spacing = 8
        connectWithStack.contentMode = .scaleAspectFit
        connectWithStack.translatesAutoresizingMaskIntoConstraints = false
        return connectWithStack
    }()
    
    private lazy var line1: UIButton = {
        let line1 = UIButton(type: .system)
        line1.layer.cornerRadius = 20
        line1.backgroundColor = .lightGray
        line1.configuration?.cornerStyle = .capsule
        line1.heightAnchor.constraint(equalToConstant: 2).isActive = true
        return line1
    }()
    
    private lazy var line2: UIButton = {
        let line2 = UIButton(type: .system)
        line2.layer.cornerRadius = 20
        line2.backgroundColor = .lightGray
        line2.configuration?.cornerStyle = .capsule
        line2.heightAnchor.constraint(equalToConstant: 2).isActive = true
        return line2
    }()
    
    private lazy var connectWithnLabel: UILabel = {
        let connectWithnLabel = UILabel()
        connectWithnLabel.text = "or connect with"
        connectWithnLabel.textColor = .lightGray
        connectWithnLabel.font = .systemFont(ofSize: 16, weight: .regular)
        connectWithnLabel.textAlignment = .center
        connectWithnLabel.heightAnchor.constraint(equalToConstant: 16).isActive = true
        return connectWithnLabel
    }()
    
    //MARK: - Connect Buttons Stack
    
    private lazy var connectButtonStack: UIStackView = {
        let connectButtonStack = UIStackView(arrangedSubviews: [facebookButton,twitterButton])
        connectButtonStack.axis = .horizontal
        connectButtonStack.alignment = .fill
        connectButtonStack.distribution = .fillEqually
        connectButtonStack.spacing = 10
        connectButtonStack.contentMode = .scaleToFill
        connectButtonStack.translatesAutoresizingMaskIntoConstraints = false
        return connectButtonStack
    }()
    
    private lazy var facebookButton: UIButton = {
        let facebookButton = UIButton(type: .system)
        facebookButton.setTitle("Facebook", for: .normal)
        facebookButton.setTitleColor(.white, for: .normal)
        facebookButton.backgroundColor = #colorLiteral(red: 0.2073602676, green: 0.644135654, blue: 0.9379553199, alpha: 1)
        let image = UIImage(named: "facebook")?.withRenderingMode(.alwaysOriginal)
        facebookButton.layer.cornerRadius = 20
        facebookButton.setImage(image, for: .normal)
        facebookButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        return facebookButton
    }()

    private lazy var twitterButton: UIButton = {
        let twitterButton = UIButton(type: .system)
        twitterButton.setTitle("Twitter", for: .normal)
        twitterButton.setTitleColor(.white, for: .normal)
        twitterButton.backgroundColor = #colorLiteral(red: 0.3609595895, green: 0.4577199221, blue: 0.7171906829, alpha: 1)
        twitterButton.tintColor = .white
        twitterButton.layer.cornerRadius = 20
        twitterButton.setImage(UIImage(named: "twitter"), for: .normal)
        twitterButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        return twitterButton
    }()
    
    //MARK: - Sign Up Stack
    
    private lazy var signUpStack: UIStackView = {
        let signUpStack = UIStackView(arrangedSubviews: [signUpLabel, signUpButton])
        signUpStack.axis = .horizontal
        signUpStack.alignment = .fill
        signUpStack.distribution = .fill
        signUpStack.spacing = 0
        signUpStack.contentMode = .scaleToFill
        signUpStack.translatesAutoresizingMaskIntoConstraints = false
        return signUpStack
    }()
    
    private lazy var signUpLabel: UILabel = {
        let signUpLabel = UILabel()
        signUpLabel.text = "Don't have account?"
        signUpLabel.textColor = .lightGray
        signUpLabel.font = .systemFont(ofSize: 16, weight: .regular)
        signUpLabel.textAlignment = .center
        signUpLabel.numberOfLines = 0
        return signUpLabel
    }()
    
    private lazy var signUpButton: UIButton = {
        let signUpButton = UIButton(type: .system)
        signUpButton.setTitle("Sign Up", for: .normal)
        return signUpButton
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
        view.addSubview(connectWithStack)
        view.addSubview(connectButtonStack)
        view.addSubview(signUpStack)
    }
    
    private func setupApp() {
        //MARK: Backgroung ImageView constraints
        
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        
        //MARK: - Login Label contstraints
        
        loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 35).isActive = true
        
        //MARK: - Login StackView constraints
        
        loginStackView.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 25).isActive = true
        loginStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        loginStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        
        //MARK: - LoginButton StackView constraints
            
        loginButtonStackView.topAnchor.constraint(equalTo: loginStackView.bottomAnchor, constant: 35).isActive = true
        loginButtonStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        loginButtonStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        
        //MARK: - "Connect with" Stack constraints
        connectWithStack.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 25).isActive = true
        connectWithStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22).isActive = true
        connectWithStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22).isActive = true
        
        //MARK: - Connect Buttons Stack
        
        connectButtonStack.topAnchor.constraint(equalTo: connectWithStack.bottomAnchor, constant: 20).isActive = true
        connectButtonStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22).isActive = true
        connectButtonStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22).isActive = true
        
        //MARK: - "Sign UP" Stack constraints
        
        signUpStack.topAnchor.constraint(equalTo: connectButtonStack.bottomAnchor, constant: 20).isActive = true
        signUpStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        signUpStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
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

