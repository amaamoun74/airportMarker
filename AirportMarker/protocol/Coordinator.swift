//
//  Coordinator.swift
//  AirportMarker
//
//  Created by ahmed on 26/06/2023.
//

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] {get set}
    
    func start()
}

extension Coordinator {
    func add (coordinator: Coordinator) -> Void {
        childCoordinators.append(coordinator)
    }
    
    func remove(coordinator : Coordinator) {
        childCoordinators = childCoordinators.filter({$0 !== coordinator})
    }
}
