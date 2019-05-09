//
//  MessageViewController.swift
//  TheOldTimes
//
//  Created by Ashik Chowdhury on 5/4/19.
//  Copyright © 2019 AshikChowdhury. All rights reserved.
//

import UIKit

class MessageViewController: UIViewController {

    let composeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "plus"), for: .normal)
        button.frame = CGRect(x: 160, y: 100, width: 50, height: 50)
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
        button.layer.masksToBounds = true
        button.tintColor = UIColor.init(red: 0/255, green: 128/255, blue: 128/255, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarController?.tabBar.isHidden = true
        let image = UIImage(named: "messageicon")
        let messagebutton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(showChatLog))
        self.navigationItem.rightBarButtonItem = messagebutton
        
        view.addSubview(composeButton)
        
        setupComposeButton()
        
    }

    func setupComposeButton() {
        composeButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        composeButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        composeButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        composeButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
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
