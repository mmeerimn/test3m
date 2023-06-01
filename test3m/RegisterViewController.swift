//
//  RegisterViewController.swift
//  test3m
//
//  Created by Meerim Mamatkadyrova on 29/5/23.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var UsernameTF: UITextField!
    
    
    @IBOutlet weak var EmailTF: UITextField!
    

    @IBOutlet weak var MobileNumberTF: UITextField!
    
    
    @IBOutlet weak var PasswordTF: UITextField!
    
    
    @IBAction func EyeButton(_ sender: Any) {
        if PasswordTF.isSecureTextEntry == true{
            PasswordTF.isSecureTextEntry = false
        }else{
            PasswordTF.isSecureTextEntry = true
        }
    }
    
    
    @IBAction func LoginButton(_ sender: Any) {
        let TFArray: [UITextField] = [UsernameTF, EmailTF, MobileNumberTF, PasswordTF]
        
        var DidSignUpEnd = 0
            for i in TFArray {
                if i.text != "" {
                    DidSignUpEnd += 1
                } else if i.text == ""{
                    i.placeholder = " Заполните, пожалуйста"
                    i.layer.borderWidth = 2
                    i.layer.borderColor = UIColor.red.cgColor
                    DidSignUpEnd = 0
                }
            }
            if DidSignUpEnd == 4{
                openFgtPwd()
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        PasswordTF.isSecureTextEntry = true
    }
    
    func openFgtPwd(){
        let vc = storyboard?.instantiateViewController(withIdentifier: "fgtPwd_vc") as! FgtPwdViewController
        vc.email = EmailTF.text
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
