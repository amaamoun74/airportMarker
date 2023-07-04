//
//  HttpServices.swift
//  AirportMarker
//
//  Created by ahmed on 04/07/2023.
//

import Alamofire
protocol HttpService{
    var sessionManager: Session {get set}
    func request (_ urlRequest: URLRequestConvertible) -> DataRequest
}
