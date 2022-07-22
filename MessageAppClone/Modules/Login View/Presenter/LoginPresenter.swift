//
//  LoginPresenter.swift
//  MessageAppClone
//
//  Created by Mahmoud on 7/18/22.
//

import Foundation

protocol LoginPresenterPr {
    // will deal with view
    func suceessfullySign()
    func failedSign(er: String)
}

//MARK:- Presenter

class LoginPresenterView: SignProtocol {
    //MARK:- Properties
    var view    : LoginPresenterPr?
    var sign    = Sign()

    
    //MARK:- Init
    init(view: LoginPresenterPr) {
        self.view = view
        sign.delegate = self
    }
    
    //MARK:- Methods
    
    func signIn(email: String, password: String) {
        sign.signIn(email: email, password: password)
    }
    
    func signup(username: String, email: String, password: String) {
        sign.signup(username: username, email: email, password: password)
    }
    
}
//MARK:- Add Heading

extension LoginPresenterView: results {
    func userDidLogSuccessfully(email: String) {
        self.view?.suceessfullySign()
    }
    
    func errorWhileLogging(er: String) {
        self.view?.failedSign(er: er)
    }
    
    
}

