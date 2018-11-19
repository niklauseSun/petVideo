//
//  PeronalDataViewController.swift
//  petVideo
//
//  Created by yujian on 2018/11/12.
//  Copyright © 2018 yujian. All rights reserved.
//

import UIKit

class PeronalDataViewController: UIViewController {
    
    lazy var userNameLabel: UILabel = {
        let v = UILabel()
        v.text = "用户名"
        v.textColor = UIColor.blue
        return v
    }()
    
    lazy var userNameTextFiled: UITextField = {
        let v = UITextField()
        return v
    }()
    
    lazy var userGender: UILabel = {
        let v = UILabel()
        v.text = "性别"
        v.textColor = UIColor.blue
        return v
    }()

    lazy var uiserGenderBtn: UIButton = {
        let v = UIButton()
        v.titleLabel?.text = "男" // default
        v.titleLabel?.textColor = UIColor.blue
        return v
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

// UI setup
extension PeronalDataViewController {
    func setupUI() -> Void {
        self.view.backgroundColor = UIColor.white
        self.title = "个人资料"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.blue]
    }
}
