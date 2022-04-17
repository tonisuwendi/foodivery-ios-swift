//
//  WelcomeViewController.swift
//  Foodivery
//
//  Created by Toni Suwendi on 17/04/22.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet weak var signInWithFacebookButton: UIButton!
    @IBOutlet weak var signInNormallyButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: animated)
        
        signInWithFacebookButton.customButton()
        signInNormallyButton.customButton()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

}

extension UIButton {
    func customButton() {
        self.layer.cornerRadius = 12
    }
}
