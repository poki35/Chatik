//
//  ViewController.swift
//  Chatik
//
//  Created by Кирилл Пономаренко on 04.09.2022.
//

import UIKit
import Foundation

class AuthorizationViewController: UIViewController {
    
    let registrationBackground: UIImageView = {
        let reg = UIImageView()
        reg.image = UIImage(named: "sss")
        return reg
    }()
    
    private lazy var registrationButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 167 / 255, green: 191 / 255, blue: 208 / 255, alpha: 75)
        button.layer.cornerRadius = 25
        button.addTarget(self, action: #selector(registr), for: .touchUpInside)
        return button
    }()
    
    private lazy var alsoAcc: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 167 / 255, green: 191 / 255, blue: 208 / 255, alpha: 0)
        button.layer.cornerRadius = 25
        button.addTarget(self, action: #selector(alsoLog), for: .touchUpInside)
        return button
    }()
    
    private lazy var logLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "HandjetFlowerDouble-Medium", size: 22)
        label.text = "Войти"
        label.textColor = .white
        return label
    }()
    
    private lazy var regLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "HandjetFlowerDouble-Medium", size: 35)
        label.text = "Р е г и с т р а ц и я"
        label.textColor = .black
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        
        
        
    }
    
    
    @objc func registr() {
        let vc = RegViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        present(vc, animated: true, completion: nil)
        
        print("registr button tapped")
    }
    
    @objc func alsoLog() {
        let vc = AuthViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        present(vc, animated: true)
        
        print("login button tapped")
    }
    
    private func setUp() {
        
        view.addSubviews(registrationBackground, registrationButton, alsoAcc, logLabel, regLabel)
        
        registrationButton.translatesAutoresizingMaskIntoConstraints = false
        registrationBackground.translatesAutoresizingMaskIntoConstraints = false
        alsoAcc.translatesAutoresizingMaskIntoConstraints = false
        logLabel.translatesAutoresizingMaskIntoConstraints = false
        regLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            registrationBackground.topAnchor.constraint(equalTo: view.topAnchor, constant: -2),
            registrationBackground.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            registrationBackground.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            registrationBackground.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 4),
            
            
            registrationButton.topAnchor.constraint(equalTo: registrationBackground.topAnchor, constant: 410),
            registrationButton.leadingAnchor.constraint(equalTo: registrationBackground.leadingAnchor, constant: 60),
            registrationButton.widthAnchor.constraint(equalToConstant: 290),
            registrationButton.heightAnchor.constraint(equalToConstant: 50),
            registrationButton.trailingAnchor.constraint(equalTo: registrationBackground.trailingAnchor, constant: -60),
            
            
            alsoAcc.topAnchor.constraint(equalTo: registrationButton.bottomAnchor, constant: 16),
            alsoAcc.leadingAnchor.constraint(equalTo: registrationBackground.leadingAnchor, constant: 125),
            alsoAcc.trailingAnchor.constraint(equalTo: registrationBackground.trailingAnchor, constant: -125),
            alsoAcc.widthAnchor.constraint(equalToConstant: 150),
            alsoAcc.heightAnchor.constraint(equalToConstant: 30),
            
            
            logLabel.topAnchor.constraint(equalTo: alsoAcc.topAnchor, constant: 8),
            logLabel.leadingAnchor.constraint(equalTo: alsoAcc.leadingAnchor, constant: 59),
            
            regLabel.topAnchor.constraint(equalTo: registrationButton.topAnchor, constant: 10),
            regLabel.leadingAnchor.constraint(equalTo: registrationButton.leadingAnchor, constant: 42),
            
        ])
    }
    
}

public extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }
    
}
