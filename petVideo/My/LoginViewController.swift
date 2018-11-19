//
//  LoginViewController.swift
//  petVideo
//
//  Created by yujian on 2018/11/19.
//  Copyright © 2018 yujian. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupUI()
    }
    
    @IBAction func UserName(_ sender: Any) {
        
    }

    @IBAction func Password(_ sender: Any) {
        
    }
    

    @IBAction func LoginAction(_ sender: Any) {
        
    }
    
    @IBAction func RegisterAction(_ sender: Any) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

// UI
extension LoginViewController {
    func setupUI() -> Void {
        self.title = "登录"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.blue]
    }
}
