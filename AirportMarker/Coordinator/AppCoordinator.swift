//
//  AppCoordinator.swift
//  AirportMarker
//
//  Created by ahmed on 26/06/2023.
//

import UIKit
class AppCoordinator : BaseCoordinator {
    
    private let window: UIWindow
    
    private let navigationController: UINavigationController = {
        let navigationController = UINavigationController()
        let navigationBar = navigationController.navigationBar
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.backgroundColor = UIColor(named: "red")
        navigationBar.barTintColor = UIColor(named: "red")
        navigationBar.sizeToFit()
        navigationBar.tintColor = UIColor(named: "red")
        navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Avenir-Medium", size: 28.0)!,NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationBar.isTranslucent = true
        return navigationController

    }()
    
    
    init(window: UIWindow) {
        self.window = window
    }
    
    override func start() {
        let searchCityCoordinator = SearchCityCoordinator(navigationController: navigationController)
    
        self.add(coordinator: searchCityCoordinator)
        
        searchCityCoordinator.start()
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
    }
}
