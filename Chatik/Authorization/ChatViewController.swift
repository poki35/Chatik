//
//  ChattViewController.swift
//  Chatik
//
//  Created by Кирилл Пономаренко on 05.09.2022.
//

import UIKit

class ChatViewController: UIViewController {
    
    private enum LayoutConstant {
        static let spacing: CGFloat = -1
    }
    
    private lazy var searchView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 167 / 255, green: 191 / 255, blue: 208 / 255, alpha: 100)
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
    
    private lazy var searchController: UISearchController = {
        let search = UISearchController()
        search.hidesNavigationBarDuringPresentation = false
        search.searchBar.delegate = self
        search.searchBar.backgroundColor = UIColor.clear
        return search
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        
        //view.backgroundColor = UIColor(red: 16 / 255, green: 35 / 255, blue: 48 / 255, alpha: 100)
    }
    
    private func setUp() {
        view.addSubviews(collection, searchView, separatingLine, searchLabel, searchController.searchBar)
        
        collection.backgroundColor = UIColor(red: 16 / 255, green: 35 / 255, blue: 48 / 255, alpha: 100)
        collection.delegate = self
        collection.dataSource = self
        
        searchController.hidesNavigationBarDuringPresentation = true
        searchController.searchBar.searchBarStyle = .minimal
        
        collection.translatesAutoresizingMaskIntoConstraints = false
        searchView.translatesAutoresizingMaskIntoConstraints = false
        separatingLine.translatesAutoresizingMaskIntoConstraints = false
        searchLabel.translatesAutoresizingMaskIntoConstraints = false
        searchController.searchBar.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            collection.topAnchor.constraint(equalTo: searchView.bottomAnchor),
            collection.leftAnchor.constraint(equalTo: view.leftAnchor),
            collection.rightAnchor.constraint(equalTo: view.rightAnchor),
            collection.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            searchView.topAnchor.constraint(equalTo: view.topAnchor),
            searchView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            searchView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            searchView.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 130),
            
            separatingLine.topAnchor.constraint(equalTo: searchView.bottomAnchor, constant: 1),
            separatingLine.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            separatingLine.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            separatingLine.heightAnchor.constraint(equalToConstant: 1),
            
            searchLabel.topAnchor.constraint(equalTo: searchView.topAnchor, constant: 45),
            searchLabel.leadingAnchor.constraint(equalTo: searchView.leadingAnchor, constant: 1),
            searchLabel.trailingAnchor.constraint(equalTo: searchView.trailingAnchor, constant: -1),
            
            searchController.searchBar.topAnchor.constraint(equalTo: searchLabel.bottomAnchor, constant: 1),
            searchController.searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 1),
            searchController.searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -1)
        ])
        
    }
}

extension ChatViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
    }
}

extension ChatViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChatCollectionViewCell", for: indexPath)
        cell.layer.borderColor = UIColor.darkGray.cgColor
        cell.layer.borderWidth = 1
        cell.backgroundColor = .clear
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/1, height: collectionView.frame.width/7)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return LayoutConstant.spacing
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Hi!")
    }
    
    
}

