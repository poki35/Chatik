//
//  ChatCollectionViewCell.swift
//  Chatik
//
//  Created by Кирилл Пономаренко on 06.09.2022.
//

import UIKit

class ChatCollectionViewCell: UICollectionViewCell {
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17)
        label.numberOfLines = 2
        label.text = "Имя Фамилия"
        return label
    }()
    
    private lazy var avatar: UIImageView = {
        let ava = UIImageView()
        ava.image = UIImage(named: "sss")
        ava.contentMode = .scaleToFill
        ava.clipsToBounds = true
        ava.layer.cornerRadius = 27
        return ava
    }()
    
    private lazy var countLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray
        label.font = UIFont.systemFont(ofSize: 13)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        contentView.backgroundColor = UIColor(red: 167 / 255, green: 191 / 255, blue: 208 / 255, alpha: 100)
        //contentView.layer.cornerRadius = 8
        
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUp() {
        
        contentView.addSubviews(nameLabel, avatar, countLabel)
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        avatar.translatesAutoresizingMaskIntoConstraints = false
        countLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 3),
            nameLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 65),
            nameLabel.widthAnchor.constraint(equalToConstant: 150),
            
            avatar.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 3),
            avatar.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 3),
            avatar.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -3),
            avatar.widthAnchor.constraint(equalToConstant: 55),
            avatar.heightAnchor.constraint(equalToConstant: 55),
            
            countLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            countLabel.widthAnchor.constraint(equalToConstant: 188),
            countLabel.heightAnchor.constraint(equalToConstant: 18),
            countLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            
        ])
    }
}
