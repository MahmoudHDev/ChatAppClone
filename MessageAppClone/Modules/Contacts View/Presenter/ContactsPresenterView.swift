//
//  ContactsPresenterView.swift
//  MessageAppClone
//
//  Created by Mahmoud on 7/23/22.
//

import Foundation

protocol ContactsPresenterPr {
    func usersDidLoad()
    func userFaildLoad()
}

//MARK:- Presenter

class ContactsPresenterView {
    //MARK:- Properties
    var view:ContactsPresenterPr?
    
    //MARK:- init
    init(view: ContactsPresenterPr) {
        self.view = view
    }
    
    //MARK:- Methods
    
    

}
