//
//  ViewController.swift
//  iOS1-HW17-MaxMakeevV2
//
//  Created by Макс Макеев on 15.07.2025.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - ImageView
    
    private lazy var imageView: UIImageView = {
        let image = UIImage(named:"background")
        let imageView = UIImageView(image:image)
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // MARK: - Login Label
    private lazy var loginLabel = createLabel(
        text: "Login",
        fontSize: 35,
        color: .white,
        alignment: .center
    )
    
    // MARK: - Login Stack
    
    private lazy var loginStackView = createStackView(
        axis: .vertical,
        distribution: .fillEqually,
        spacing: 11,
        alignment: nil,
        contentMode: .scaleToFill
    )
    
    private lazy var loginTextField = createTextField(
        placeholder: "max@icloud.com",
        leftIcon: .init(systemName: "person.circle"),
        rightIcon: .right
    )
    
    private lazy var passwordTextField = createTextField(
        placeholder: "Password",
        leftIcon: .init(systemName: "lock"),
        rightIcon: nil
    )
    
    // MARK: - LoginButton Stack
    
    private lazy var loginButtonStackView = createStackView(
        axis: .vertical,
        distribution: .fillProportionally,
        spacing: 10,
        alignment: nil,
        contentMode: .scaleToFill
    )
    
    private lazy var loginButton = createButton(
        title: "Login",
        textColor: .white,
        backgroundColor: #colorLiteral(red: 0.4199445248, green: 0.3708131313, blue: 1, alpha: 1),
        icon: nil
    )
    
    private lazy var forgotPasswordButton = createButton(
        title: "Forgot your password?",
        textColor: .white,
        backgroundColor: nil,
        icon: nil
    )
    
    // MARK: - "Connect with" Stack
    
    private lazy var connectWithStack = createStackView(
        axis: .horizontal,
        distribution: .fillEqually,
        spacing: 8,
        alignment: .center,
        contentMode: .scaleAspectFit
    )
    
    private lazy var line1 = createButton(
        title: nil,
        textColor: nil,
        backgroundColor: .lightGray,
        icon: nil
    )
    
    private lazy var line2 = createButton(
        title: nil,
        textColor: nil,
        backgroundColor: .lightGray,
        icon: nil
    )
    
    private lazy var connectWithnLabel = createLabel(
        text: "or connect with",
        fontSize: 16,
        color: .lightGray,
        alignment: .center
    )
    
    // MARK: - Connect Buttons Stack
    
    private lazy var connectButtonStack = createStackView(
        axis: .horizontal,
        distribution: .fillEqually,
        spacing: 10,
        alignment: .fill,
        contentMode: .scaleToFill
    )
    
    private lazy var facebookButton = createButton(
        title: "Facebook",
        textColor: .white,
        backgroundColor: #colorLiteral(red: 0.2073602676, green: 0.644135654, blue: 0.9379553199, alpha: 1),
        icon: .facebook.withRenderingMode(.alwaysOriginal)
    )
    
    private lazy var twitterButton = createButton(
        title: "Twitter",
        textColor: .white,
        backgroundColor: #colorLiteral(red: 0.3609595895, green: 0.4577199221, blue: 0.7171906829, alpha: 1),
        icon: .twitter.withRenderingMode(.alwaysOriginal)
    )
    
    // MARK: - Sign Up Stack
    
    private lazy var signUpStack = createStackView(
        axis: .horizontal,
        distribution: .fill,
        spacing: 0,
        alignment: .fill,
        contentMode: .scaleToFill
    )
    
    private lazy var signUpLabel: UILabel = createLabel(
        text: "Don't have account?",
        fontSize: 16,
        color: .lightGray,
        alignment: .center
    )
    
    private lazy var signUpButton = createButton(
        title: "Sign Up",
        textColor: nil,
        backgroundColor: nil,
        icon: nil
    )
    
    // MARK: - Lifecycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        addSubviews()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: View Hierarchy methods
    
    private func addSubviews() {
        loginStackView.addArrangedSubview(loginTextField)
        loginStackView.addArrangedSubview(passwordTextField)
        
        loginButtonStackView.addArrangedSubview(loginButton)
        loginButtonStackView.addArrangedSubview(forgotPasswordButton)
        
        connectWithStack.addArrangedSubview(line1)
        connectWithStack.addArrangedSubview(connectWithnLabel)
        connectWithStack.addArrangedSubview(line2)
        
        connectButtonStack.addArrangedSubview(facebookButton)
        connectButtonStack.addArrangedSubview(twitterButton)
        
        signUpStack.addArrangedSubview(signUpLabel)
        signUpStack.addArrangedSubview(signUpButton)
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
    
    private func setupView() {
        view.backgroundColor = .white
    }
    
    // MARK: Setup constraints methods
    
    private func setupLayout() {
        
        // MARK: Backgroung ImageView constraints
        
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        
        // MARK: - Login Label contstraints
        
        loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 35).isActive = true
        
        // MARK: - Login StackView constraints
        
        loginStackView.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 25).isActive = true
        loginStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        loginStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        loginTextField.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        // MARK: - LoginButton StackView constraints
        
        loginButtonStackView.topAnchor.constraint(equalTo: loginStackView.bottomAnchor, constant: 35).isActive = true
        loginButtonStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        loginButtonStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        // MARK: - "Connect with" Stack constraints
        
        connectWithnLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        connectWithStack.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 25).isActive = true
        connectWithStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22).isActive = true
        connectWithStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22).isActive = true
        line1.heightAnchor.constraint(equalToConstant: 1).isActive = true
        line2.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        // MARK: - Connect Buttons Stack
        
        connectButtonStack.topAnchor.constraint(equalTo: connectWithStack.bottomAnchor, constant: 20).isActive = true
        connectButtonStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 22).isActive = true
        connectButtonStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -22).isActive = true
        facebookButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        // MARK: - "Sign UP" Stack constraints
        
        signUpStack.topAnchor.constraint(equalTo: connectButtonStack.bottomAnchor, constant: 20).isActive = true
        signUpStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        signUpStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
    }
    
    // MARK: - Create views methods
    
    private func createLabel(
        text: String,
        fontSize: CGFloat,
        color: UIColor,
        alignment: NSTextAlignment
    ) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = .systemFont(ofSize: fontSize, weight: .regular)
        label.textColor = color
        label.textAlignment = alignment
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    private func createButton(
        title: String?,
        textColor: UIColor?,
        backgroundColor: UIColor?,
        icon: UIImage?
    ) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(textColor, for: .normal)
        button.layer.cornerRadius = 20
        button.backgroundColor = backgroundColor
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(icon, for: .normal)
        return button
    }
    
    private func createTextField(
        placeholder: String,
        leftIcon: UIImage?,
        rightIcon: UIImage?
    ) -> UITextField {
        let textField = UITextField()
        textField.placeholder = placeholder
        textField.textColor = .black
        textField.backgroundColor = .white
        textField.font = .systemFont(ofSize: 14, weight: .regular)
        textField.layer.cornerRadius = 20
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        if let leftIcon = leftIcon {
            textField.setLeftIcon(leftIcon)
        }

        if let rightIcon = rightIcon {
            textField.setRightIcon(rightIcon)
        }
        
        return textField
    }
    
    private func createStackView(
        axis: NSLayoutConstraint.Axis,
        distribution: UIStackView.Distribution,
        spacing: CGFloat,
        alignment: UIStackView.Alignment?,
        contentMode: UIView.ContentMode
    ) -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = axis
        stackView.alignment = alignment ?? .fill
        stackView.distribution = distribution
        stackView.spacing = spacing
        stackView.contentMode = contentMode
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }
}

//MARK: - Extension to Textfield

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 20, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 60, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
    
    func setRightIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: -10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 100, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }
}

