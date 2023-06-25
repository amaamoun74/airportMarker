//
//  ViewController.swift
//  AirportMarker
//
//  Created by ahmed on 19/06/2023.
//

import UIKit
import RxSwift
import RxDataSources

class SearchCityViewController: UIViewController {

    //outlets
    @IBOutlet weak var roundeView: UIView!
    @IBOutlet weak var citySearch_TF: UITextField!
    @IBOutlet weak var CityTable: UITableView!
    
    // instances
    var viewModel: SearchCityViewPresentable!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

