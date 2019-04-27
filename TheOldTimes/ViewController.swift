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

class ViewController: UIViewController, UISearchControllerDelegate, UISearchResultsUpdating, UISearchBarDelegate {
    
//    var papers = [[String:Any]] ()
//    let apiKey = "olpx6Y2AeQIKAanvOmwukQgtiTXmCFgH"
    var searchController : UISearchController!
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
        
        self.searchController = UISearchController(searchResultsController:  nil)
        
        self.searchController.searchResultsUpdater = self
        self.searchController.delegate = self
        self.searchController.searchBar.delegate = self
        
        self.searchController.hidesNavigationBarDuringPresentation = false
        self.searchController.dimsBackgroundDuringPresentation = true
        
        self.navigationItem.titleView = searchController.searchBar
        
        self.definesPresentationContext = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(addTapped))
        
    }
    @objc func addTapped() {
        print("Buttons Tapped")
    }
    func updateSearchResults(for searchController: UISearchController) {
        print("Test")
    }
}

