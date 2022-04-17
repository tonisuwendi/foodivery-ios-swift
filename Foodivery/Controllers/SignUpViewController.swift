//
//  SignUpViewController.swift
//  Foodivery
//
//  Created by Toni Suwendi on 17/04/22.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.setHidesBackButton(true, animated: true)
        navigationController?.navigationBar.prefersLargeTitles = true
        
        nameTextField.customTextField()
        emailTextField.customTextField()
        passwordTextField.customTextField()
        signUpButton.customButton()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}
