//
//  Sign.swift
//  MessageAppClone
//
//  Created by Mahmoud on 7/22/22.
//

import Foundation
import Firebase

protocol results {
    func userDidLogSuccessfully(email:String)
    func errorWhileLogging(er: String)
}

class Sign {
    
    //MARK:- Properties
    var delegate: results?
    var db      = Database.database().reference()
    
    //MARK:- Methods
    func signIn(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { (result, err) in
            if let er = err {
                self.delegate?.errorWhileLogging(er: er.localizedDescription)
            }else{
                print("Successfully sign in From Firebase")
                self.delegate?.userDidLogSuccessfully(email: result?.user.email ?? "")
            }
        }
        
        print("Sign in from Sign Class")
    }

    func signup(username: String, email:String, password: String)  {
        Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
            if let er = err {
                self.delegate?.errorWhileLogging(er: er.localizedDescription)
            }else {
                print("Successfully created in the Firebase")
                guard let userId = Auth.auth().currentUser?.uid else { return }
                let values: [String: Any] = [
                    "userId"    : userId,
                    "email"     : email,
                    "username"  : username,
                    "dateJoined": "\(Date())"
                ]
                self.db.child("users").child(userId).setValue(values)
                self.delegate?.userDidLogSuccessfully(email: email)
            }
        }
        
        print("Sign up from Sign Class")
    }
}
