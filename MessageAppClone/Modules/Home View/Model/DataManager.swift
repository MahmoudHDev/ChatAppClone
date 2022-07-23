//
//  DataManager.swift
//  MessageAppClone
//
//  Created by Mahmoud on 7/22/22.
//

import Foundation

class DataManager: LoadDataPr {

    //MARK:- Properties
    let manageData = ManageData()
    
    //MARK:- Methods

    func loadMessages() {
        manageData.loadMessages()
    }
    
    func loadUsers(id: String) {
        manageData.loadUsers(id: id)
    }
    
}
