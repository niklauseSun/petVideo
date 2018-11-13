//
//  MyViewController.swift
//  petVideo
//
//  Created by yujian on 2018/11/12.
//  Copyright © 2018 yujian. All rights reserved.
//

import UIKit
import SnapKit

class MyViewController: UIViewController {
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "测试"
        label.textColor = UIColor.red
        return label
    }()
    
    lazy var headImageBtn: UIButton = {
        let v = UIButton()
        v.layer.cornerRadius = 60
        v.addTarget(self, action: #selector(clickMyHeadImage), for: .touchUpInside)
        return v
    }()
    
    lazy var headImageView: UIImageView = {
        let v = UIImageView()
        v.layer.cornerRadius = 60
        v.image = UIImage(named: "default_head_image")
        return v
    }()
    
    lazy var myFavBtn: UIButton = {
        let v = UIButton()
        v.setTitle("我的关注", for: .normal)
        v.setTitleColor(UIColor.blue, for: .normal)
        v.addTarget(self, action: #selector(clickMyFavAction), for: .touchUpInside)
        return v
    }()
    
    lazy var myLikeBtn: UIButton = {
        let v = UIButton()
        v.setTitle("我的喜欢", for: .normal)
        v.setTitleColor(UIColor.blue, for: .normal)
        v.addTarget(self, action: #selector(clickMyLike), for: .touchUpInside)
        return v
    }()
    
    lazy var myPetBtn: UIButton = {
        let v = UIButton()
        v.setTitle("我的宠物", for: .normal)
        v.setTitleColor(UIColor.blue, for: .normal)
        v.addTarget(self, action: #selector(clickMyPet), for: .touchUpInside)
        return v
    }()
    
    lazy var myFriend: UIButton = {
        let v = UIButton()
        v.setTitle("我的好友", for: .normal)
        v.setTitleColor(UIColor.blue, for: .normal)
        v.addTarget(self, action: #selector(clickMyFriend), for: .touchUpInside)
        return v
    }()
    
    lazy var myPersonBtn: UIButton = {
        let v = UIButton()
        v.setTitle("个人资料", for: .normal)
        v.setTitleColor(UIColor.blue, for: .normal)
        v.addTarget(self, action: #selector(clickMyPersonalData), for: .touchUpInside)
        return v
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.navigationBar.isHidden = false
    }
}

// UI
extension MyViewController {
    func setupView() -> Void {
        self.view.backgroundColor = UIColor.white
        addHeadImage()
        addHeadImageBtn()
        addMyFav()
        addMyLikeBtn()
        addMyPetBtn()
        addMyFriendBtn()
        addMyPersonData()
    }
    
    func addTitleView() -> Void {
        self.view.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { (make) in
            make.center.equalTo(self.view)
        }
    }
    
    func addHeadImage() -> Void {
        self.view.addSubview(headImageView)
        headImageView.snp.makeConstraints { (make) in
            make.height.width.equalTo(120)
            make.top.equalTo(self.view.snp.top).offset(60)
            make.centerX.equalTo(self.view.snp.centerX)
        }
    }
    
    func addHeadImageBtn() -> Void {
        self.view.addSubview(headImageBtn)
        headImageBtn.snp.makeConstraints { (make) in
            make.height.width.equalTo(120)
            make.top.equalTo(self.view.snp.top).offset(60)
            make.centerX.equalTo(self.view.snp.centerX)
        }
    }
    
    func addMyFav() -> Void {
        self.view.addSubview(myFavBtn)
        myFavBtn.snp.makeConstraints { (make) in
            make.top.equalTo(headImageBtn.snp.bottom).offset(20)
            make.centerX.equalTo(self.view.snp.centerX)
        }
    }
    
    func addMyLikeBtn() -> Void {
        self.view.addSubview(myLikeBtn)
        myLikeBtn.snp.makeConstraints { (make) in
            make.top.equalTo(myFavBtn.snp.bottom).offset(20)
            make.centerX.equalTo(self.view.snp.centerX)
        }
    }
    
    func addMyPetBtn() -> Void {
        self.view.addSubview(myPetBtn)
        myPetBtn.snp.makeConstraints { (make) in
            make.top.equalTo(myLikeBtn.snp.bottom).offset(20)
            make.centerX.equalTo(self.view.snp.centerX)
        }
    }
    
    func addMyFriendBtn() -> Void {
        self.view.addSubview(myFriend)
        myFriend.snp.makeConstraints { (make) in
            make.top.equalTo(myPetBtn.snp.bottom).offset(20)
            make.centerX.equalTo(self.view.snp.centerX)
        }
    }
    
    func addMyPersonData() {
        self.view.addSubview(myPersonBtn)
        myPersonBtn.snp.makeConstraints { (make) in
            make.top.equalTo(myFriend.snp.bottom).offset(20)
            make.centerX.equalTo(self.view.snp.centerX)
        }
    }
}

// action
extension MyViewController {
    @objc
    func clickMyHeadImage(_ sender: UIButton) {
        print("click head")
    }
    @objc
    func clickMyFavAction(_ sender: UIButton) {
        print("click fav")
    }
    @objc
    func clickMyLike(_ sender: UIButton) {
        print("click like")
    }
    @objc
    func clickMyPet(_ sender: UIButton) {
        print("click pet")
    }
    @objc
    func clickMyFriend(_ sender: UIButton) {
        print("click friend")
    }
    
    @objc
    func clickMyPersonalData(_ sender: UIButton) {
        let personal = PeronalDataViewController()
        self.navigationController?.pushViewController(personal, animated: true)
    }
}
