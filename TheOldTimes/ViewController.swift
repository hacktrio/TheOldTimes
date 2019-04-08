//
//  ViewController.swift
//  TheOldTimes
//
//  Created by Ashik Chowdhury on 4/8/19.
//  Copyright © 2019 AshikChowdhury. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var papers = [[String:Any]] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://api.nytimes.com/svc/archive/v1/2019/1.json?api-key=olpx6Y2AeQIKAanvOmwukQgtiTXmCFgH")!
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
            // This will run when the network request returns
            if let error = error {
                print(error.localizedDescription)
            } else if let data = data {
                let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
                
                self.papers = dataDictionary["docs"] as! [[String:Any]]
                print(self.papers)
            }
            
            
        }
    }
}

