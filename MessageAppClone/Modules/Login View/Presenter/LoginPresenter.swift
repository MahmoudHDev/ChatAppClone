//
//  LoginPresenter.swift
//  MessageAppClone
//
//  Created by Mahmoud on 7/18/22.
//

import Foundation

protocol LoginPresenterPr {
    // will deal with view
    func suceessfullySignIn()
    func failedSignIn(er: String)

}

//MARK:- Presenter

class LoginPresenterView: SignupManagerPr, LoginManagerPr {

        
    //MARK:- Properties
    var view: LoginPresenterPr?
    
    let signupManager = SignupManager()
    let loginManager  = LoginManager()
    
    //MARK:- Init
    init(view: LoginPresenterPr) {
        self.view = view
        self.signupManager.delegate = self
    }
    
    //MARK:- Methods
    
    func signup(username: String, email: String, password: String) {
        signupManager.signup(username: username, email: email, password: password)
    }
    
    func signin(username: String, password: String) {
        loginManager.signin(username: username, password: password)
    }
    
}
//MARK:- Extension

extension LoginPresenterView: SignUpResults {
    
    func successSignup(email: String) {
        self.view?.suceessfullySignIn()
    }
    
    func failedSignup(error: String) {
        self.view?.failedSignIn(er: error)
    }
    
}
