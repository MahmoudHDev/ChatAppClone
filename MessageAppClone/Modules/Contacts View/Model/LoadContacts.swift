//
//  LoadContacts.swift
//  MessageAppClone
//
//  Created by Mahmoud on 7/23/22.
//

import Foundation

class LoadContacts: LoadContactsPr {
    //MARK:- Properties
    let loadContactsManager = LoadContactsManager()
    
    //MARK:- Methods

    func loadKeys() {
        loadContactsManager.loadKeys()
    }
    
    func fetchUsers(ids: [String]) {
        loadContactsManager.fetchUsers(ids: ids)
    }
    
    
}
