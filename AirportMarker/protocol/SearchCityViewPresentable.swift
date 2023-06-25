//
//  SearchCityViewPresentable.swift
//  AirportMarker
//
//  Created by ahmed on 25/06/2023.
//

import Foundation
import RxCocoa
protocol SearchCityViewPresentable{
    
    typealias Input = (searchText: Driver<String>, ())
    typealias Output = ()
    typealias ViewModelBuldier = (SearchCityViewPresentable.Input) -> SearchCityViewPresentable
    
    var input : SearchCityViewPresentable.Input {get}
    
    var output : SearchCityViewPresentable.Output { get }
}
