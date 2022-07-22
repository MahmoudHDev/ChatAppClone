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
    var presenter: LoginPresenterView?
    
    
    //MARK:- View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = LoginPresenterView(view: self)

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
            print("signup")
            guard let name = username.text,
                  let email = email.text,
                  let pass = password.text else { return }
            presenter?.signup(username: name, email: email, password: pass)
        case 1:
            guard let email = email.text,
                  let pass = password.text else { return }
            presenter?.signIn(email: email, password: pass)
            print("Signin")
        default:
            // default tag is 2
            print("Forget password")
        }
    }
    
}

//MARK:- Presenter

extension LoginViewController: LoginPresenterPr {
    
    func suceessfullySign() {
        let storyBoard = UIStoryboard.init(name: "Home", bundle: nil).instantiateViewController(identifier: "homeView")
        self.dismiss(animated: true, completion: nil)
        present(storyBoard, animated: true, completion: nil)
        print("present new storyboard")
    }
    
    func failedSign(er: String) {
        errorMessage.isHidden = false
        errorMessage.text = er
    }
    
}

