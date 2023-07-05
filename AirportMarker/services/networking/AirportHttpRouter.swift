//
//  AirportHttpRouter.swift
//  AirportMarker
//
//  Created by ahmed on 04/07/2023.
//

import Alamofire

enum AirportHttpRouter {
    case getAirPorts
}

extension AirportHttpRouter: HttpRouter {
    var baseUrlString: String {
        return ""
    }
    
    var path: String {
        switch self {
        case .getAirPorts:
            return "airport.json"
        }
    }
    
    var method: Alamofire.HTTPMethod {
        switch self{
        case .getAirPorts:
            return .get
        }
    }
    
    var headers: Alamofire.HTTPHeaders? {
        return nil
    }
    
    var parameters: Alamofire.Parameters? {
        return nil
    }
    
    func body() throws -> Data? {
        return nil
    }
    
    func request(usingHttpService Service: HttpService) {
        
    }
    
    //var
    
}
