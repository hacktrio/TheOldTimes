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

class ViewController: UIViewController, UISearchBarDelegate {
    
//    var papers = [[String:Any]] ()
//    let apiKey = "olpx6Y2AeQIKAanvOmwukQgtiTXmCFgH"
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let url = "https://api.nytimes.com/svc/search/v2/articlesearch.json?&api-key="+apiKey
//        Alamofire.request(url, method: .get)
//            .responseJSON { response in
//                if let value = response.result.value{
//                    let json = JSON(value)
//                    print(json)
//                }
//        }
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

