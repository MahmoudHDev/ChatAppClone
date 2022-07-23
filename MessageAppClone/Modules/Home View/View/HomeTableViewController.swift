//
//  HomeTableViewController.swift
//  MessageAppClone
//
//  Created by Mahmoud on 7/21/22.
//

import UIKit

class HomeTableViewController: UITableViewController {
    
    //MARK:- Properties
    var presenter: HomePresenterView?
    var arrMessages = [""]
    //MARK:- View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = HomePresenterView(view: self)
        presenter?.loadMessages()
        tableView.separatorStyle = .none
    }

    
    //MARK:- Actions
    @IBAction func newChat(_ sender: UIBarButtonItem) {
        let storyBoard = UIStoryboard(name: "Contacts", bundle: nil).instantiateViewController(identifier: "contactsViewID")
        self.navigationController?.pushViewController(storyBoard, animated: true)

        
    }
    
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrMessages.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        return cell
    }
    

}
//MARK:- Home Presenter

extension HomeTableViewController: HomePresenterPr {
    
    func dataDidLoad() {
        print("Show Messages in the tableView")
    }
    
    func dataFaildLoad() {
        print("Error Loading Messages in the tableView")

    }
}
