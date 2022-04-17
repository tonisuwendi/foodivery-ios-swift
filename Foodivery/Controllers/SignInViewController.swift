//
//  SignInViewController.swift
//  Foodivery
//
//  Created by Toni Suwendi on 17/04/22.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.setHidesBackButton(true, animated: true)
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let style = NSMutableParagraphStyle()
        style.firstLineHeadIndent = 30
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.paragraphStyle : style]
        
        emailTextField.customTextField()
        passwordTextField.customTextField()
        signInButton.customButton()
    }

    override func viewDidLoad() {
        super.viewDidLoad()


    }

}

extension UITextField {
    func customTextField(_ amount: CGFloat = 20) {
        let paddingView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
        
        self.layer.borderWidth = 1
        self.layer.borderColor = Constants.Color.greyColor
        self.layer.cornerRadius = 12
        self.layer.masksToBounds = true
    }
}
