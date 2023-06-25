//
//  SearchCityCoordinator.swift
//  AirportMarker
//
//  Created by ahmed on 26/06/2023.
//

import UIKit
class SearchCityCoordinator: BaseCoordinator {
    var navigationController: UINavigationController
    init(navigationController: UINavigationController)
    {
        self.navigationController = navigationController
    }
    override func start() {
        let view = SearchCityViewController.instantiate()
        
        view.viewModelBuilder = {
            SearchCityViewModel(input: $0)
        }
        navigationController.pushViewController(view, animated: true)
    }
}
