//
//  ScrollSelectPopView.swift
//  ZzzPopView_swift
//
//  Created by zhouzezhou on 2018/8/9.
//  Copyright © 2018 zzz. All rights reserved.
//

import UIKit


class ScrollSelectPopView:UIView {

    let PADDING_backgroudView:CGFloat = 20.0     // 背景层的右、下边距
    
    var dataScrollSelect:DataScrollSelect?
    var backgroudViewWidth:CGFloat?
    var backgroudViewHeight:CGFloat?
    var pickviewWidth:CGFloat?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = UIScreen.main.bounds
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initWithScrollSelectDataFun(data:DataScrollSelect)
    {
        dataScrollSelect = data
        
        self.backgroundColor = .black
        self.alpha = 0.6
        
        // 大小常量
        let btnFontSize = 15                 // 按钮字体大小
        let paddingLeft = 10.0               // 左边距
        let selectedImgWidth = 20.0          // 选中图片宽度
        self.backgroudViewWidth = kScreenWidth * 0.5  // 白色背景层宽度
        self.backgroudViewHeight = kScreenHeight - kStatusBarHeight - self.PADDING_backgroudView      // 白色背景层高度
        self.pickviewWidth = backgroudViewWidth
        
        
//        return self
    }
    
    public func showInView(parentView:UIView)
    {
        parentView.addSubview(self)
    }
}

