//
//  LoginViewController.swift
//  app1
//
//  Created by Mac on 15/01/19.
//  Copyright © 2019 bhadresh. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var txtEmailId: UITextField!
    
    
    @IBOutlet weak var txtPassword: UITextField!
    
    
    @IBOutlet weak var lblLoginStatus: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        lblLoginStatus.text = ""
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func TapToSignInAction(_ sender: UIButton) {
        
        if txtEmailId.text == "gosai09@gmail.com" && txtPassword.text == "123"
        {
            
            lblLoginStatus.text = "Success!"
            lblLoginStatus.textColor = UIColor.green
        }
        else{
            
            lblLoginStatus.text = "Email Id or Password is wrong!"
            lblLoginStatus.textColor = UIColor.red
            
        }
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension LoginViewController:UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}


