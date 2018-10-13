//
//  sign-UpVc.swift
//  FirebaseApptest
//
//  Created by User on 12/10/2018.
//  Copyright © 2018 santi. All rights reserved.
//

import UIKit
import Firebase

class sign_UpVc: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func signUpBtn(_ sender: Any) {
        guard let email = emailTextField.text else {return}
        guard let password = passwordTextField.text else {return}
        
        Auth.auth().createUser(withEmail: email, password: password) {
            user, error in
            if error == nil && user != nil {
                print("SignedUp")
                self.performSegue(withIdentifier: "toMain", sender: nil)
            }
        }
        
        
        
    }
    

}
