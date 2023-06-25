//
//  SearchCityViewModel.swift
//  AirportMarker
//
//  Created by ahmed on 25/06/2023.
//

import Foundation
import RxCocoa

class SearchCityViewModel : SearchCityViewPresentable {
    
    var input : SearchCityViewPresentable.Input
    var output : SearchCityViewPresentable.Output
    
    
    init(input: SearchCityViewPresentable.Input){
        self.input = input
        self.output = SearchCityViewModel.getOutput(input: self.input)
        
    }
}


private extension SearchCityViewModel {
    static func getOutput(input: SearchCityViewPresentable.Input) -> SearchCityViewPresentable.Output {
        return ()
    }
}
