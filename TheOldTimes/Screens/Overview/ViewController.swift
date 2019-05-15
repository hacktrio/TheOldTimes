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
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
        
        checkIfUserIsLoggedin()
       
    }
    
    func checkIfUserIsLoggedin() {
        //User is not logged in, user id (uid) does not exist
        if Auth.auth().currentUser?.uid == nil {
            perform(#selector(handleLogout), with: nil, afterDelay: 0)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
    
    @objc func handleLogout() {
        
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        
        let loginController = LoginViewController()
        present(loginController, animated: true, completion: nil)
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

