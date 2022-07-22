//
//  ContactsTableViewController.swift
//  MessageAppClone
//
//  Created by Mahmoud on 7/21/22.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    //MARK:- Outlets

    
    //MARK:- View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...

        return cell
    }
    

    
}
