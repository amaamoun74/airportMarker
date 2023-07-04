//
//  HttpRouter.swift
//  AirportMarker
//
//  Created by ahmed on 27/06/2023.
//

import Alamofire
protocol HttpRouter {
    var baseUrlString : String {get}
    var path: String {get}
    var method: HTTPMethod {get}
    var headers: HTTPHeaders? {get}
    var parameters: Parameters? {get}
    
    func body() throws -> Data?
    func request(usingHttpService Service: HttpService)
    
}
