//
//  SignProtocol.swift
//  MessageAppClone
//
//  Created by Mahmoud on 7/22/22.
//

import Foundation

protocol SignProtocol {

    func signIn(email: String, password: String)
    func signup(username: String, email:String, password: String)
}
