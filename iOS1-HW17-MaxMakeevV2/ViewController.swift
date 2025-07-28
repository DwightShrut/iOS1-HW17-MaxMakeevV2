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
        
        // MARK: -Backgroung ImageView constraints
        
        imageView.addConstraints(
            top: view.topAnchor,
            topPadding: 0,
            left: view.leadingAnchor,
            leftPadding: 0,
            right: view.trailingAnchor,
            rightPadding: 0
        )
        
        // MARK: - Login Label contstraints
        
        loginLabel.addConstraints(
            centerX: view.centerXAnchor,
            top: view.safeAreaLayoutGuide.topAnchor,
            topPadding: 35
        )
        
        // MARK: - Login StackView constraints
        
        loginStackView.addConstraints(
            top: loginLabel.bottomAnchor,
            topPadding: 25,
            left: view.leadingAnchor,
            leftPadding: 50,
            right: view.trailingAnchor,
            rightPadding: -50,
        )
        
        loginTextField.addConstraints(height: 40)
        passwordTextField.addConstraints(height: 40)
        
        // MARK: - LoginButton StackView constraints
        
        loginButtonStackView.addConstraints(
            top: loginStackView.bottomAnchor,
            topPadding: 35,
            left: view.leadingAnchor,
            leftPadding: 50,
            right: view.trailingAnchor,
            rightPadding: -50
        )
        
        loginButton.addConstraints(height: 40)
        
        // MARK: - "Connect with" Stack constraints
        
        connectWithStack.addConstraints(
            top: imageView.bottomAnchor,
            topPadding: 25,
            left: view.leadingAnchor,
            leftPadding: 22,
            right: view.trailingAnchor,
            rightPadding: -22
        )
        
        connectWithnLabel.addConstraints(height: 40)
        line1.addConstraints(height: 1)
        line2.addConstraints(height: 1)
        
        // MARK: - Connect Buttons Stack
        
        connectButtonStack.addConstraints(
            top: connectWithStack.bottomAnchor,
            topPadding: 20,
            left: view.leadingAnchor,
            leftPadding: 22,
            right: view.trailingAnchor,
            rightPadding: -22
        )
        
        facebookButton.addConstraints(height: 40)
        
        // MARK: - "Sign UP" Stack constraints
        
        signUpStack.addConstraints(top: connectButtonStack.bottomAnchor, topPadding: 20, left: view.leadingAnchor, leftPadding: 50, right: view.trailingAnchor, rightPadding: -50)
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
        return stackView
    }
} 
