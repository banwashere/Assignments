//
//  ForgotPassViewController.swift
//  AutoLayoutAssignment
//
//  Created by Chee Kok Ban on 1/11/16.
//  Copyright © 2016 Chee Kok Ban. All rights reserved.
//

import UIKit

class ForgotPassViewController: UIViewController {

    @IBOutlet weak var forgotLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var retrievePassBtn: UIButton!
    @IBOutlet weak var backBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func forgotBack(_ sender: AnyObject){
        self.dismiss(animated: true)
    }
    
    
}
