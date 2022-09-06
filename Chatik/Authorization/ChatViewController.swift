//
//  ChattViewController.swift
//  Chatik
//
//  Created by Кирилл Пономаренко on 05.09.2022.
//

import UIKit

class ChatViewController: UIViewController {
    
    private lazy var searchView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.mainColor
        return view
    }()
    
    private lazy var separatingLine: UIView = {
       let line = UIView()
        line.backgroundColor = .black
        return line
    }()
    
    private lazy var searchLabel: UILabel = {
        let label = UILabel()
        label.text = "Чаты"
        label.font = UIFont(name: "HandjetFlowerDouble-Medium", size: 30)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var collection: UICollectionView = {
        let setUp = UICollectionViewFlowLayout()
        let collection = UICollectionView(frame: .zero, collectionViewLayout: setUp)
        collection.register(ChatCollectionViewCell.self, forCellWithReuseIdentifier: String(describing: ChatCollectionViewCell.self))
        
        return collection
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        
        //view.backgroundColor = UIColor(red: 16 / 255, green: 35 / 255, blue: 48 / 255, alpha: 100)
    }
    
    private func setUp() {
        view.addSubviews(collection, searchView, separatingLine, searchLabel)
        
        collection.backgroundColor = UIColor.backColor
        collection.delegate = self
        collection.dataSource = self
        
        collection.translatesAutoresizingMaskIntoConstraints = false
        searchView.translatesAutoresizingMaskIntoConstraints = false
        separatingLine.translatesAutoresizingMaskIntoConstraints = false
        searchLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            collection.topAnchor.constraint(equalTo: searchView.bottomAnchor),
            collection.leftAnchor.constraint(equalTo: view.leftAnchor),
            collection.rightAnchor.constraint(equalTo: view.rightAnchor),
            collection.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            searchView.topAnchor.constraint(equalTo: view.topAnchor),
            searchView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            searchView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            searchView.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            
            separatingLine.topAnchor.constraint(equalTo: searchView.bottomAnchor, constant: 1),
            separatingLine.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            separatingLine.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            separatingLine.heightAnchor.constraint(equalToConstant: 1),
            
            searchLabel.topAnchor.constraint(equalTo: searchView.topAnchor, constant: 45),
            searchLabel.leadingAnchor.constraint(equalTo: searchView.leadingAnchor, constant: 1),
            searchLabel.trailingAnchor.constraint(equalTo: searchView.trailingAnchor, constant: -1)
        ])
        
    }
}

extension ChatViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChatCollectionViewCell", for: indexPath)
        cell.backgroundColor = .clear
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/1, height: collectionView.frame.width/7)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    
    }

