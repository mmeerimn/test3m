//
//  ViewController.swift
//  test3m
//
//  Created by Meerim Mamatkadyrova on 29/5/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var EmailTF: UITextField!
    
    @IBOutlet weak var PasswordTF: UITextField!
    
    @IBAction func EyeButton(_ sender: Any) {
        if PasswordTF.isSecureTextEntry == true{
            PasswordTF.isSecureTextEntry = false
        }else{
            PasswordTF.isSecureTextEntry = true
        }
    }
    
    
    @IBAction func LoginButton(_ sender: Any) {
        var TFArray: [UITextField] = [EmailTF, PasswordTF]
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
            if DidSignUpEnd == 2{
                openMain()
            }
        
    }
    
    @IBOutlet weak var CreateNowLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CreateNowLabel.isUserInteractionEnabled = true
        CreateNowLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(openReg)))
        
        PasswordTF.isSecureTextEntry = true
        
    }
    
    @objc func openReg(){
        let vc = storyboard?.instantiateViewController(withIdentifier: "register_vc")
        navigationController?.pushViewController(vc!, animated: true)
    }

    func openMain(){
        let mainVc = storyboard?.instantiateViewController(withIdentifier: "main_vc")
        navigationController?.pushViewController(mainVc!, animated: true)
    }

}

