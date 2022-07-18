//
//  SignupManager.swift
//  MessageAppClone
//
//  Created by Mahmoud on 7/18/22.
//

import Foundation
import Firebase

//MARK:- Protocol

protocol SignupManagerPr {
    
    func signup(username: String, email: String, password:String)
}



//MARK:- Protocol to tell the succes and the fail
protocol SignUpResults {
    
    func successSignup(email:String)
    func failedSignup(error: String)
    
}


//MARK:- SignupManager

class SignupManager{
    
    //MARK:- Properties
    var delegate: SignUpResults?
    
    //MARK:- Methods

    func signup(username: String, email: String, password: String) {
        
        Auth.auth().createUser(withEmail: username, password: password) { (result, er) in
            if let err = er {
                self.delegate?.failedSignup(error: err.localizedDescription)
            }else {
                self.delegate?.successSignup(email: email)
            }
        }
        print("SignupManager Class")
    }
    
    
}
