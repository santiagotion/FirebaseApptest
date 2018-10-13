//
//  sign-InVc.swift
//  FirebaseApptest
//
//  Created by User on 12/10/2018.
//  Copyright © 2018 santi. All rights reserved.
//

import UIKit
import Firebase

class sign_InVc: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    @IBAction func signInBtn(_ sender: Any) {
        
        guard let email = emailTextField.text else {return}
        guard let password = passwordTextField.text else {return}
        
        Auth.auth().signIn(withEmail: email, password: password) {
             user, error in
            if error == nil && user != nil {
                print("signed in")
                self.performSegue(withIdentifier: "toMain", sender: nil)
            }else {
                print("error:\(error!.localizedDescription)")
            }
            
        }
        
        
        
        
    }
    

}
