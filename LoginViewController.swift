//
//  LoginViewController.swift
//  Twitter
//
//  Created by Sylvia Sesay on 2/16/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if UserDefaults.standard.bool(forKey: "userLoggedin") == true {
            self.performSegue(withIdentifier: "LogintoHome", sender: self)
        }
    }
    
    @IBAction func LoginButton(_ sender: Any) {
        
        let URL = "https://api.twitter.com/oauth/request_token"
        TwitterAPICaller.client?.login(url: URL, success: {
            
            UserDefaults.standard.set(true, forKey: "userLoggedin")
            self.performSegue(withIdentifier: "LogintoHome", sender: self)
        }, failure: { (Error) in
            print("Could not log on!")
        })
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
