//
//  ViewController.swift
//  AirportMarker
//
//  Created by ahmed on 19/06/2023.
//

import UIKit
import RxSwift
import RxDataSources

class SearchCityViewController: UIViewController, Storyboardable {
    
    //outlets
    @IBOutlet weak var roundeView: UIView!
    @IBOutlet weak var citySearch_TF: UITextField!
    @IBOutlet weak var CityTable: UITableView!
    
    // instances
    private var viewModel: SearchCityViewPresentable!
    var viewModelBuilder: SearchCityViewPresentable.ViewModelBuldier!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewModel = viewModelBuilder((
            searchText: citySearch_TF.rx.text.orEmpty.asDriver(),()
        ))
        self.title = "Airports"
    }
}

