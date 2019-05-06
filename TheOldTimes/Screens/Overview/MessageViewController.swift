//
//  MessageViewController.swift
//  TheOldTimes
//
//  Created by Ashik Chowdhury on 5/4/19.
//  Copyright © 2019 AshikChowdhury. All rights reserved.
//

import UIKit

class MessageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        let image = UIImage(named: "messageicon")
        let messagebutton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(showChatLog))
        self.navigationItem.rightBarButtonItem = messagebutton
    }

    
    @objc func showChatLog() {
        let chatLogController = ShowChatLogController(collectionViewLayout: UICollectionViewFlowLayout())
        navigationController?.pushViewController(chatLogController, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
