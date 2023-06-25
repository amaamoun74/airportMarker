//
//  Storyboardable.swift
//  AirportMarker
//
//  Created by ahmed on 26/06/2023.
//

import UIKit
protocol Storyboardable {
    static func instantiate()-> Self
}
extension Storyboardable where Self: UIViewController {
    
    static func instantiate() -> Self {
        let fullName = NSStringFromClass(self)
        let className = fullName.components(separatedBy: ".")[1]
        let storyboard = UIStoryboard(name: "Main" , bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
}
