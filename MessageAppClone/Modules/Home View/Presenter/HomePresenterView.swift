//
//  HomePresenter.swift
//  MessageAppClone
//
//  Created by Mahmoud on 7/22/22.
//

import Foundation

protocol HomePresenterPr {
    func dataDidLoad()
    func dataFaildLoad()
}

//MARK:- HomePresenter

class HomePresenterView: LoadDataPr {

    
    //MARK:- Properties
    var view            : HomePresenterPr?
    var dataManager     : DataManager = DataManager()
    var users           = [ContactsModel]()
    var recentMessages  = [RecentMessages]()
    
    //MARK:- Init
    init(view: HomePresenterPr) {
        self.view = view
    }
    
    //MARK:- Methods
    func loadMessages() {
        dataManager.loadMessages()
    }
    
    func loadUsers(id: String) {
        dataManager.loadUsers(id: id)
    }
    
    
}

// Protocol Here to inform the presenter about Succcess and Failed
