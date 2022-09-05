//
//  ChatViewController.swift
//  Chatik
//
//  Created by Кирилл Пономаренко on 05.09.2022.
//

import UIKit

class ChatTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateTabBar()
        setTabBarAppearance()
        
    }
    
    private func generateTabBar() {
        viewControllers = [
            generateVC(
                viewController: ChatViewController(),
                title: "Контакты",
                image: UIImage(systemName: "person.fill")
            ),
            generateVC(
                viewController: ChatViewController(),
                title: "Чаты",
                image: UIImage(systemName: "quote.bubble.fill")
            ),
            generateVC(
                viewController: ChatViewController(),
                title: "Настройки",
                image: UIImage(systemName: "slider.horizontal.3")
            )
        ]
    }
    
    private func generateVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
    
    private func setTabBarAppearance() {
        let positionOnX: CGFloat = 10
        let positionOnY: CGFloat = 14
        let width = tabBar.bounds.width - positionOnX * 2
        let height = tabBar.bounds.height + positionOnY * 2
        
        let roundLayer = CAShapeLayer()
        
        let bezierPath = UIBezierPath(
            roundedRect: CGRect(
                x: positionOnX,
                y: tabBar.bounds.minY - positionOnY,
                width: width,
                height: height
            ),
            cornerRadius: height / 2
        )
        
        roundLayer.path = bezierPath.cgPath
        
        tabBar.layer.insertSublayer(roundLayer, at: 0)
        
        tabBar.itemWidth = width / 5
        tabBar.itemPositioning = .centered
        
        roundLayer.fillColor = UIColor.mainColor.cgColor
        
        tabBar.tintColor = .tabBarItemAccent
        tabBar.unselectedItemTintColor = .backColor
    }
}

