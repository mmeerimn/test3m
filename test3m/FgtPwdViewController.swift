//
//  FgtPwdViewController.swift
//  test3m
//
//  Created by Meerim Mamatkadyrova on 29/5/23.
//

import UIKit

class FgtPwdViewController: UIViewController {
    
    var email: String!
    
    @IBOutlet weak var EmailTF: UITextField!
    
    @IBAction func SendOtpButton(_ sender: Any) {
        var otp = String(Int.random(in: 1000...9999))
        showAllert(message: otp)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        EmailTF.text = email
        
    }

    private func showAllert(message: String){
        let aletrController = UIAlertController(title: "OTP", message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .cancel) { action in
            
        }
        
        aletrController.addAction(okAction)
        
        
        present(aletrController, animated: true)
    }
    
}
