//
//  AirportHttpService.swift
//  AirportMarker
//
//  Created by ahmed on 04/07/2023.
//

import Alamofire

class AirportHttpService: HttpService {
    var sessionManager: Session = Session.default
    
    func request(_ urlRequest: URLRequestConvertible) -> DataRequest {
        return sessionManager.request(urlRequest).validate(statusCode: 200 ..< 300)
    }
}
