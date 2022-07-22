//
//  HomeTableViewController.swift
//  MessageAppClone
//
//  Created by Mahmoud on 7/21/22.
//

import UIKit

class HomeTableViewController: UITableViewController {
    //MARK:- Outlets
    

    //MARK:- View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    
    //MARK:- Actions
    @IBAction func newChat(_ sender: UIBarButtonItem) {
        // Push the contacts view
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
