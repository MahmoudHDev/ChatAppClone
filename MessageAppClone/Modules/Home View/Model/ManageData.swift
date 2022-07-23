//
//  DataManager.swift
//  MessageAppClone
//
//  Created by Mahmoud on 7/22/22.
//

import Foundation
import Firebase

//MARK:- Protocol
protocol ManageDataPr {
    func messagesLoaded(data: RecentMessages)
    func usersLoaded(users: ContactsModel)
    func dataFailed(er: String)
}


//MARK:- ManageData

class ManageData {
    //MARK:- Properties
    let ref     = Firestore.firestore()
    var delegate:ManageDataPr?
    
    //MARK:- Methods

    func loadMessages() {
        print("Loading Messages from the Firestore")
//        self.delegate?.messagesLoaded(data: "OBJ HERE")
    }
    
    func loadUsers(id: String) {
        print("Loading users from the Firestore")
//        self.delegate?.usersLoaded(users: "OBJ HERE")
        
    }
}
