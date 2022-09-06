//
//  RegVIewControllerViewController.swift
//  Chatik
//
//  Created by Кирилл Пономаренко on 04.09.2022.
//

import UIKit

class RegViewController: UIViewController {
    
    private lazy var registrLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "HandjetFlowerDouble-Medium", size: 35)
        label.text = "Р е г и с т р а ц и я"
        label.textColor = .white
        return label
    }()
    
    private lazy var loginBackgroundForFields: UIView = {
        let backgroundForFields = UIView()
        backgroundForFields.backgroundColor = .white
        backgroundForFields.layer.borderWidth = 0.5
        backgroundForFields.layer.borderColor = UIColor.lightGray.cgColor
        backgroundForFields.layer.cornerRadius = 23
        return backgroundForFields
    }()

    private lazy var passwordBackgroundForFields: UIView = {
        let backgroundForFields = UIView()
        backgroundForFields.backgroundColor = .white
        backgroundForFields.layer.borderWidth = 0.5
        backgroundForFields.layer.borderColor = UIColor.lightGray.cgColor
        backgroundForFields.layer.cornerRadius = 23
        return backgroundForFields
    }()

    private lazy var secondPasswordBackgroundForFields: UIView = {
        let backgroundForFields = UIView()
        backgroundForFields.backgroundColor = .white
        backgroundForFields.layer.borderWidth = 0.5
        backgroundForFields.layer.borderColor = UIColor.lightGray.cgColor
        backgroundForFields.layer.cornerRadius = 23
        return backgroundForFields
    }()
    
    private lazy var numberField: UITextField = {
        let numberField = UITextField()
        numberField.attributedPlaceholder = NSAttributedString(string: "Введите E-Mail", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        numberField.textAlignment = .center
        numberField.font = .systemFont(ofSize: 16, weight: .regular)
        numberField.textColor = .black
        return numberField
    }()
    
    private lazy var passwordField: UITextField = {
        let passwordField = UITextField()
        passwordField.attributedPlaceholder = NSAttributedString(string: "Введите пароль", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        passwordField.textAlignment = .center
        passwordField.font = .systemFont(ofSize: 16, weight: .regular)
        passwordField.textColor = .black
        passwordField.isSecureTextEntry = true
        return passwordField
    }()
    
    private lazy var secondPasswordField: UITextField = {
        let passwordField = UITextField()
        passwordField.attributedPlaceholder = NSAttributedString(string: "Повторите пароль", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        passwordField.textAlignment = .center
        passwordField.font = .systemFont(ofSize: 16, weight: .regular)
        passwordField.textColor = .black
        passwordField.isSecureTextEntry = true
        return passwordField
    }()
    
    private lazy var alsoAccount: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 167 / 255, green: 191 / 255, blue: 208 / 255, alpha: 0)
        button.layer.cornerRadius = 25
        button.addTarget(self, action: #selector(alsoLogin), for: .touchUpInside)
        return button
    }()
    
    private lazy var alsoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "HandjetFlowerDouble-Medium", size: 17)
        label.text = "Уже есть аккаунт?"
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    private lazy var mainButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 167 / 255, green: 191 / 255, blue: 208 / 255, alpha: 75)
        button.layer.cornerRadius = 25
        button.addTarget(self, action: #selector(registr), for: .touchUpInside)
        return button
    }()
    
    private lazy var mainLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "HandjetFlowerDouble-Medium", size: 27)
        label.text = "З а р е г и с т р и р о в а т ь с я"
        label.textColor = .black
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        
        view.backgroundColor = UIColor(red: 16 / 255, green: 35 / 255, blue: 48 / 255, alpha: 100)
        
    }
    
    @objc func alsoLogin() {
        let vc = AuthViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        present(vc, animated: true)
        
        print("login button tapped")
    }
    
    @objc func registr() {
        let vc = RegViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        present(vc, animated: true, completion: nil)
        
        print("registr button tapped")
    }
    
    private func setUp() {
        
        view.addSubviews(secondPasswordBackgroundForFields, loginBackgroundForFields, passwordBackgroundForFields, registrLabel,numberField, passwordField, secondPasswordField, alsoAccount, alsoLabel, mainButton, mainLabel)
        
        loginBackgroundForFields.translatesAutoresizingMaskIntoConstraints = false
        passwordBackgroundForFields.translatesAutoresizingMaskIntoConstraints = false
        registrLabel.translatesAutoresizingMaskIntoConstraints = false
        numberField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        secondPasswordField.translatesAutoresizingMaskIntoConstraints = false
        secondPasswordBackgroundForFields.translatesAutoresizingMaskIntoConstraints = false
        alsoAccount.translatesAutoresizingMaskIntoConstraints = false
        alsoLabel.translatesAutoresizingMaskIntoConstraints = false
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            registrLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 220),
            registrLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 105),
            
            loginBackgroundForFields.topAnchor.constraint(equalTo: registrLabel.bottomAnchor, constant: 30),
            loginBackgroundForFields.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            loginBackgroundForFields.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            loginBackgroundForFields.heightAnchor.constraint(equalToConstant: 45),
            
            passwordBackgroundForFields.topAnchor.constraint(equalTo: loginBackgroundForFields.bottomAnchor, constant: 10),
            passwordBackgroundForFields.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            passwordBackgroundForFields.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            passwordBackgroundForFields.heightAnchor.constraint(equalToConstant: 45),
            
            secondPasswordBackgroundForFields.topAnchor.constraint(equalTo: passwordBackgroundForFields.bottomAnchor, constant: 10),
            secondPasswordBackgroundForFields.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            secondPasswordBackgroundForFields.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            secondPasswordBackgroundForFields.heightAnchor.constraint(equalToConstant: 45),
            
            numberField.topAnchor.constraint(equalTo: loginBackgroundForFields.topAnchor, constant: 4),
            numberField.leadingAnchor.constraint(equalTo: loginBackgroundForFields.leadingAnchor, constant: 10),
            numberField.trailingAnchor.constraint(equalTo: loginBackgroundForFields.trailingAnchor, constant: -10),
            numberField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordField.topAnchor.constraint(equalTo: passwordBackgroundForFields.topAnchor, constant: 4),
            passwordField.leadingAnchor.constraint(equalTo: passwordBackgroundForFields.leadingAnchor, constant: 10),
            passwordField.trailingAnchor.constraint(equalTo: passwordBackgroundForFields.trailingAnchor, constant: -10),
            passwordField.heightAnchor.constraint(equalToConstant: 40),
            
            secondPasswordField.topAnchor.constraint(equalTo: secondPasswordBackgroundForFields.topAnchor, constant: 4),
            secondPasswordField.leadingAnchor.constraint(equalTo: secondPasswordBackgroundForFields.leadingAnchor, constant: 10),
            secondPasswordField.trailingAnchor.constraint(equalTo: secondPasswordBackgroundForFields.trailingAnchor, constant: -10),
            secondPasswordField.heightAnchor.constraint(equalToConstant: 40),
            
            alsoAccount.topAnchor.constraint(equalTo: secondPasswordField.bottomAnchor, constant: 13),
            alsoAccount.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 125),
            alsoAccount.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -125),
            alsoAccount.heightAnchor.constraint(equalToConstant: 20),
            
            alsoLabel.topAnchor.constraint(equalTo: secondPasswordField.bottomAnchor, constant: 8),
            alsoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 126),
            alsoLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -126),
            alsoLabel.heightAnchor.constraint(equalToConstant: 20),
            
            mainButton.topAnchor.constraint(equalTo: alsoAccount.bottomAnchor, constant: 30),
            mainButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            mainButton.heightAnchor.constraint(equalToConstant: 50),
            mainButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            
            mainLabel.topAnchor.constraint(equalTo: mainButton.topAnchor, constant: 12),
            mainLabel.leadingAnchor.constraint(equalTo: mainButton.leadingAnchor, constant: 35),
        ])}
    
}
