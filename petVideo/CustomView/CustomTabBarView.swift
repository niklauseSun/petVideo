//
//  CustomTabBarView.swift
//  petVideo
//
//  Created by yujian on 2018/11/12.
//  Copyright © 2018 yujian. All rights reserved.
//

import UIKit

enum CustomButtonOperation {
    case customRecordingVideo
    case customTakePhoto
    case customMakeTap
}

protocol  CustomTabBarViewDelegate {
    // 点击tabbar管理下的按钮
    // - parameter customTabBarView: 当前师徒
    // - parameter didSelectedButtonTag: 点击tag，这个是区分标识
    func customTabBarView(customTabBarView: CustomTabBarView, _ didSelectedButtonTag: Int)
    
    func customTabBarView(customTabBarView: CustomTabBarView, _ didSelectedOpertaionButtonType: CustomButtonOperation)

}

class CustomTabBarView: UIView {
    // Mark:
    var delegate: CustomTabBarViewDelegate?
    // 操作按钮数组
    fileprivate var operationButtons = [UIButton]()
    // tabBar 管理的按钮数组
    fileprivate var customButtons = [UIButton]()
    
    fileprivate let operationImageNames = ["tb_normal", "tb_normal", "tb_normal"]
    fileprivate let operationTitles = ["摄像", "拍照", "录音"]
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        print("CustomTabBarView 页面 init(coder:) 方法没有实现")
    }
    
    // 布局控件
    override func layoutSubviews() {
        super.layoutSubviews()
        
        // 设置位置
//        let btnY: CGFloat = 0
        let btnWidth = bounds.width / CGFloat(subviews.count)
        let btnHeight = bounds.height
        
        for (index, customButton) in customButtons.enumerated() {
            switch index {
                case 0:
                    customButton.frame = CGRect(x: 0, y: 0, width: btnWidth, height: btnHeight)
                    customButton.tag = index;
                case 1:
                    customButton.frame = CGRect(x: btnWidth * 4, y: 0, width: btnWidth, height: btnHeight)
                default:
                    break
            }
        }
        
        
    }
    
    fileprivate func addOperationButtons() {
        for index in 0 ..< 3 {
            let operationBtn = UIButton()
            operationButtons.append(operationBtn)
            operationBtn.setImage(UIImage(named: operationImageNames[index]), for: .normal)
            operationBtn.setImage(UIImage(named: operationImageNames[index]), for: .highlighted)
            operationBtn.setTitle(operationTitles[index], for: .normal)
            operationBtn.tag = 100 + index
            operationBtn.addTarget(self, action: #selector(operationButtonClickedAction(operBtn:)), for: .touchUpInside)
        }
    }
    
    @objc fileprivate func operationButtonClickedAction(operBtn: UIButton) {
        switch operBtn.tag {
        case 100:
            delegate?.customTabBarView(customTabBarView: self, .customRecordingVideo)
        case 101:
            delegate?.customTabBarView(customTabBarView: self, .customTakePhoto)
        case 102:
            delegate?.customTabBarView(customTabBarView: self, .customMakeTap)
        default:
            break
        }
    }
    
    // 保证按钮的状态正常显示
    fileprivate var lastCustomButton = UIButton()
    
    // tabbar 管理下按钮的点击事件
    @objc fileprivate func customButtonClickedAction(customBtn: UIButton) {
        delegate?.customTabBarView(customTabBarView: self, customBtn.tag)
        
        lastCustomButton.isSelected = false
        customBtn.isSelected = true
        lastCustomButton = customBtn
    }

}
