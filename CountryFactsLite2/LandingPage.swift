//
//  LandingPage.swift
//  CountryFactsLite2
//
//  Created by iosakademija on 12/5/16.
//  Copyright © 2016 iOS akademija. All rights reserved.
//

import UIKit

class LandingPage: UIViewController {

    var searchBar: UISearchController?
    var searchText: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        createSearch()
    }

}

extension LandingPage {
    func createSearch() {
        searchBar = {
            let sc = UISearchController(searchResultsController: nil)
            
            sc.searchBar.searchBarStyle = UISearchBarStyle.prominent
            
            sc.hidesNavigationBarDuringPresentation = false
            sc.dimsBackgroundDuringPresentation = false
            
            self.navigationItem.titleView = sc.searchBar
            
            return sc
        }()
    }
}
