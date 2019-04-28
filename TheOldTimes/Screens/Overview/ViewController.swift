//
//  ViewController.swift
//  TheOldTimes
//
//  Created by Ashik Chowdhury on 4/8/19.
//  Copyright © 2019 AshikChowdhury. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import Firebase
import GoogleSignIn

class ViewController: UIViewController, UISearchBarDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavbar()
        
       
    }
    
    func setupNavbar() {
        let searchBar = UISearchBar()
        searchBar.delegate = self
        searchBar.placeholder = "Search"
        searchBar.showsCancelButton = false
        searchBar.showsSearchResultsButton = true
        searchBar.searchBarStyle = .minimal
        
        self.navigationItem.titleView = searchBar
        
        
    }
}

