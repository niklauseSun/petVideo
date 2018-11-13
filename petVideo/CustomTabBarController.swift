//
//  CustomTabBarController.swift
//  petVideo
//
//  Created by yujian on 2018/11/12.
//  Copyright © 2018 yujian. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    fileprivate let tabBarImageNames = ["home", "rank","add","friend","my"]
    fileprivate let tabBarTitles = ["首页", "排行", "添加", "宠友", "我"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 自定义 TabBar 外观
        createCustomTabBar(addHeight: 0)
        
        // 创建子控制器
        addDefaultChildViewControllers()
        
        // 设置每一个子页面的按钮展示
        setChildViewControllerItem()
    }
    
    fileprivate let customTabBarView = UIView()
    
    fileprivate func createCustomTabBar(addHeight: CGFloat) {
        // 改变tabbar大小
        var oriTabBarFrame = tabBar.frame
        oriTabBarFrame.origin.y  -= addHeight
        oriTabBarFrame.size.height += addHeight
        tabBar.frame = oriTabBarFrame
        
        customTabBarView.frame = tabBar.bounds
        customTabBarView.frame.origin.y -= addHeight
        customTabBarView.backgroundColor = UIColor.groupTableViewBackground
        customTabBarView.frame.size.height = tabBar.frame.height + addHeight
        customTabBarView.isUserInteractionEnabled = true
        tabBar.addSubview(customTabBarView)
    }
    
    fileprivate func addDefaultChildViewControllers() {
        let vc1 = HomeViewController()
        let vc2 = RankViewController()
        let vc3 = AddViewController()
        let vc4 = FriendViewController()
        let vc5 = MyViewController()
        
        viewControllers = [vc1, vc2, vc3, vc4, vc5]
    }
    
    fileprivate func setChildViewControllerItem() {
        guard let containViewControllers = viewControllers else {
            print ("设置子页面 item 失败")
            return
        }
        
        if containViewControllers.count != tabBarImageNames.count {
            fatalError("设置子页面item项失败")
        }
        
        // 遍历子页面
        for (index, singleVC) in containViewControllers.enumerated() {
            singleVC.tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
            singleVC.tabBarItem.image = UIImage(named: tabBarImageNames[index])
            singleVC.tabBarItem.selectedImage = UIImage(named: tabBarImageNames[index] + "_selected")
            singleVC.tabBarItem.title = tabBarTitles[index]
        }
    }
}
