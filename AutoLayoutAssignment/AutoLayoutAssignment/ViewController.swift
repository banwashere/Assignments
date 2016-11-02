//
//  ViewController.swift
//  AutoLayoutAssignment
//
//  Created by Chee Kok Ban on 31/10/16.
//  Copyright © 2016 Chee Kok Ban. All rights reserved.
//

import UIKit
import IHKeyboardAvoiding


class ViewController: UIViewController, UITextFieldDelegate{


    @IBOutlet weak var usernameTextField : UITextField!
    @IBOutlet weak var passwordTextField : UITextField!
    @IBOutlet weak var passwordImage : UIImageView!
    @IBOutlet weak var loginButton : UIButton!
    @IBOutlet weak var forgotPassBtn : UIButton!
    @IBOutlet weak var usernameImage : UIImageView!
    
    @IBOutlet weak var logoTopConstraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupView()


        passwordTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupView(){
        
        
        loginButton.layer.cornerRadius = loginButton.frame.size.height/2
        
        usernameTextField.layer.borderWidth = 1
        usernameTextField.layer.cornerRadius = usernameTextField.frame.size.height/2
        
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.cornerRadius = usernameTextField.frame.size.height/2
        
        
        usernameTextField.layer.borderColor = UIColor.white.cgColor
        passwordTextField.layer.borderColor = UIColor.white.cgColor
        
        usernameTextField.attributedPlaceholder = NSAttributedString(string:"Username or email", attributes: [NSForegroundColorAttributeName: UIColor(white: 1.0 , alpha: 0.50)])
        passwordTextField.attributedPlaceholder = NSAttributedString(string:"", attributes: [NSForegroundColorAttributeName: UIColor(white: 1.0 , alpha: 0.50)])
        
        IHKeyboardAvoiding.setAvoiding(forgotPassBtn)
        
        if self.view.bounds.size.height < 667 {
            
            logoTopConstraint.constant = 10
            self.view.layoutIfNeeded()
        }
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
    
        if textField == passwordTextField {
            
            print("textfield")
            passwordImage.isHidden = true
        }
        
    }
    
    
 


}

