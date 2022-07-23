//
//  ContactsTableViewController.swift
//  MessageAppClone
//
//  Created by Mahmoud on 7/21/22.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    //MARK:- Outlets
    var presenter   : ContactsPresenterView?
    var users       = [ContactsModel]()
    
    //MARK:- View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Contacts"
        presenter = ContactsPresenterView(view: self)
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return users.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...

        return cell
    }
    

    
}

//MARK:- ViewPresenter
extension ContactsTableViewController: ContactsPresenterPr {
    
    func usersDidLoad() {
        print("User Did Load")
    }
    
    func userFaildLoad() {
        print("user Faild Load")
    }
    
    
}

