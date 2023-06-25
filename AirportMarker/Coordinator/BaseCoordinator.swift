//
//  BaseCoordinator.swift
//  AirportMarker
//
//  Created by ahmed on 26/06/2023.
//

import Foundation
class BaseCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    func start() {
        fatalError("childreen should implement 'start'.")
    }
}
