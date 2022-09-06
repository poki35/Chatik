//
//  AuthViewController.swift
//  Chatik
//
//  Created by Кирилл Пономаренко on 04.09.2022.
//

import UIKit

class AuthViewController: UIViewController {

    private lazy var authLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "HandjetFlowerDouble-Medium", size: 35)
        label.text = "А в т о р и з а ц и я"
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
        button.backgroundColor = UIColor.mainColor
        button.layer.cornerRadius = 25
        button.addTarget(self, action: #selector(alsoLogin), for: .touchUpInside)
        return button
    }()
    
    private lazy var alsoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "HandjetFlowerDouble-Medium", size: 17)
        label.text = "Забыли пароль?"
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    private lazy var notAccount: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.mainColor
        button.layer.cornerRadius = 25
        button.addTarget(self, action: #selector(registr), for: .touchUpInside)
        return button
    }()
    
    private lazy var notLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "HandjetFlowerDouble-Medium", size: 17)
        label.text = "Еще нет аккаунта?"
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    private lazy var mainButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.mainColor
        button.layer.cornerRadius = 25
        button.addTarget(self, action: #selector(chat), for: .touchUpInside)
        return button
    }()
    
    private lazy var mainLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "HandjetFlowerDouble-Medium", size: 27)
        label.text = "В о й т и"
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        
        view.backgroundColor = UIColor.backColor
        
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
    
    @objc func chat() {
        let vc = ChatTabBarController()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        present(vc, animated: true)
        
        print("login button tapped")
    }
    
    private func setUp() {
        
        view.addSubviews(loginBackgroundForFields, passwordBackgroundForFields, authLabel,numberField, passwordField, alsoAccount, alsoLabel, mainButton, mainLabel, notAccount, notLabel)
        
        loginBackgroundForFields.translatesAutoresizingMaskIntoConstraints = false
        passwordBackgroundForFields.translatesAutoresizingMaskIntoConstraints = false
        authLabel.translatesAutoresizingMaskIntoConstraints = false
        numberField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        alsoAccount.translatesAutoresizingMaskIntoConstraints = false
        alsoLabel.translatesAutoresizingMaskIntoConstraints = false
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        notAccount.translatesAutoresizingMaskIntoConstraints = false
        notLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            authLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 220),
            authLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 105),
            
            loginBackgroundForFields.topAnchor.constraint(equalTo: authLabel.bottomAnchor, constant: 30),
            loginBackgroundForFields.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            loginBackgroundForFields.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            loginBackgroundForFields.heightAnchor.constraint(equalToConstant: 45),
            
            passwordBackgroundForFields.topAnchor.constraint(equalTo: loginBackgroundForFields.bottomAnchor, constant: 10),
            passwordBackgroundForFields.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60),
            passwordBackgroundForFields.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60),
            passwordBackgroundForFields.heightAnchor.constraint(equalToConstant: 45),
            
            numberField.topAnchor.constraint(equalTo: loginBackgroundForFields.topAnchor, constant: 4),
            numberField.leadingAnchor.constraint(equalTo: loginBackgroundForFields.leadingAnchor, constant: 10),
            numberField.trailingAnchor.constraint(equalTo: loginBackgroundForFields.trailingAnchor, constant: -10),
            numberField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordField.topAnchor.constraint(equalTo: passwordBackgroundForFields.topAnchor, constant: 4),
            passwordField.leadingAnchor.constraint(equalTo: passwordBackgroundForFields.leadingAnchor, constant: 10),
            passwordField.trailingAnchor.constraint(equalTo: passwordBackgroundForFields.trailingAnchor, constant: -10),
            passwordField.heightAnchor.constraint(equalToConstant: 40),
            
            alsoAccount.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 13),
            alsoAccount.leadingAnchor.constraint(equalTo: passwordField.leadingAnchor, constant: -2),
            alsoAccount.trailingAnchor.constraint(equalTo: passwordField.trailingAnchor, constant: -180),
            alsoAccount.heightAnchor.constraint(equalToConstant: 20),

            alsoLabel.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 8),
            alsoLabel.leadingAnchor.constraint(equalTo: passwordField.leadingAnchor, constant: -2),
            alsoLabel.heightAnchor.constraint(equalToConstant: 20),
            
            mainButton.topAnchor.constraint(equalTo: notAccount.bottomAnchor, constant: 8),
            mainButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            mainButton.heightAnchor.constraint(equalToConstant: 50),
            mainButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            
            mainLabel.topAnchor.constraint(equalTo: mainButton.topAnchor, constant: 12),
            mainLabel.leadingAnchor.constraint(equalTo: mainButton.leadingAnchor, constant: 60),
            mainLabel.trailingAnchor.constraint(equalTo: mainButton.trailingAnchor, constant: -60),
            
            notAccount.topAnchor.constraint(equalTo: alsoAccount.bottomAnchor, constant: 30),
            notAccount.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 123),
            notAccount.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -123),
            notAccount.heightAnchor.constraint(equalToConstant: 20),
            
            notLabel.topAnchor.constraint(equalTo: notAccount.topAnchor, constant: 2),
            notLabel.leadingAnchor.constraint(equalTo: notAccount.leadingAnchor, constant: 20),
            notLabel.trailingAnchor.constraint(equalTo: notAccount.trailingAnchor, constant: -20)
        ])}
    
    

}
