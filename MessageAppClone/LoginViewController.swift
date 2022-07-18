//
//  ViewController.swift
//  MessageAppClone
//
//  Created by Mahmoud on 7/18/22.
//

import UIKit


class LoginViewController: UIViewController {
    
    //MARK:- Outlets
    @IBOutlet weak var segment          : UISegmentedControl!
    @IBOutlet weak var username         : UITextField!
    @IBOutlet weak var email            : UITextField!
    @IBOutlet weak var password         : UITextField!
    @IBOutlet weak var signbtn          : UIButton!
    @IBOutlet weak var forgotPassword   : UIButton!
    @IBOutlet weak var errorMessage     : UILabel!
    
    //MARK:- Properties
    
    
    
    //MARK:- View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    //MARK:- Actions
    @IBAction func changeLog(_ sender: UISegmentedControl) {
        
        switch segment.selectedSegmentIndex {
        case 0:
            username.isHidden       = false
            forgotPassword.isHidden = true
            signbtn.tag = 0
            signbtn.setTitle("Signup", for: .normal)
        case 1:
            username.isHidden       = true
            forgotPassword.isHidden = false
            signbtn.tag = 1
            signbtn.setTitle("Signin", for: .normal)
        default:
            print("Nothing")
        }
        
    }
    
    
    @IBAction func signBtns (_ sender: UIButton) {
        switch sender.tag{
        case 0:
            print("signup ")
        case 1:
            print("Signin")
        default:
            // default tag is 2
            print("Forget password")
        }
    }
    
}
