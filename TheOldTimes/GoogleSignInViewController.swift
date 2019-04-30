//
//  GoogleSignInViewController.swift
//  TheOldTimes
//
//  Created by Ashik Chowdhury on 4/28/19.
//  Copyright © 2019 AshikChowdhury. All rights reserved.
//

import UIKit
import GoogleSignIn
import Firebase

class GoogleSignInViewController: UIViewController, GIDSignInUIDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().signIn()
    }
    func signIn(signIn: GIDSignIn!, didSignInForUser user: GIDGoogleUser!,
                withError error: NSError!) {
        if (error == nil) {
           self.performSegue(withIdentifier: "overviewScreen", sender: nil)
        } else {
            print("Issues while trying to login user\(error.localizedDescription)")
        }
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
