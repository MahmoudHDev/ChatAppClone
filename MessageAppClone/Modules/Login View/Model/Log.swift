//
//  Log.swift
//  MessageAppClone
//
//  Created by Mahmoud on 7/18/22.
//

import Foundation

class Log: SignupManagerPr, LoginManagerPr {
    
    //MARK:- Properties
    
    let signupManager = SignupManager()
    let loginManager  = LoginManager()
    
    //MARK:- Methods

    func signup(username: String, email: String, password: String) {
        signupManager.signup(username: username, email: email, password: password)
    }
    
    func signin(username: String, password: String) {
        loginManager.signin(username: username, password: password)
    }
    
    
}
