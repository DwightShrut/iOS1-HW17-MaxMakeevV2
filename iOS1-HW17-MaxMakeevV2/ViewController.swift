//
//  ViewController.swift
//  iOS1-HW17-MaxMakeevV2
//
//  Created by Макс Макеев on 15.07.2025.
//

import UIKit

class ViewController: UIViewController {
    
    // Mark: - ImageView
    
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

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupApp()
        // Do any additional setup after loading the view.
    }
    
    private func setupHierarchy() {
        
        view.addSubview(imageView)
        view.addSubview(loginLabel)
    }
    
    private func setupApp() {
        //MARK: Backgroung ImageView constraints
        
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        
        //MARK: - Login Label contstraints
        loginLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginLabel.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 116).isActive = true
        
    }
    
    @objc private func buttonPressed() {
        
    }
}

