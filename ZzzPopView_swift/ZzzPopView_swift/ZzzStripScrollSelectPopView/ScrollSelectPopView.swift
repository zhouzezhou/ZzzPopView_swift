//
//  ScrollSelectPopView.swift
//  ZzzPopView_swift
//
//  Created by zhouzezhou on 2018/8/9.
//  Copyright © 2018 zzz. All rights reserved.
//

import Foundation
import UIKit


class ScrollSelectPopView:UIView, UIPickerViewDelegate,UIPickerViewDataSource  {

    weak open var delegate: ScrollSelectPopViewDelegate? // default is nil. weak reference
    
    let PADDING_backgroudView:CGFloat = 20.0     // 背景层的右、下边距
    
    var dataScrollSelect:DataScrollSelect?
    
    var width_backgroudView:CGFloat?
    var height_backgroudView:CGFloat?
    var width_pickview:CGFloat?
    
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
        
        // 半透明的背景图层
        let alphaBackGroudView = UIView.init(frame: self.layer.bounds)
        alphaBackGroudView.backgroundColor = .black
        alphaBackGroudView.alpha = 0.6
        self.addSubview(alphaBackGroudView)
        
//        alphaBackGroudView.isUserInteractionEnabled = true
//        let alphaBackGroudViewTapGestureRecognizer = UIGestureRecognizer.init(target: self, action: #selector(self.alphaBackGroudViewTouchUpInside(_:)))
//        alphaBackGroudView.addGestureRecognizer(alphaBackGroudViewTapGestureRecognizer)
        
        // 大小常量
        let padding:CGFloat = 10.0               // 左边距
        let width_selectedImg:CGFloat = 20.0          // 选中图片宽度
        self.width_backgroudView = kScreenWidth * 0.5  // 白色背景层宽度
        self.height_backgroudView = kScreenHeight - kStatusBarHeight - self.PADDING_backgroudView      // 白色背景层高度
        self.width_pickview = width_backgroudView
        
        // 内容图层显示出来时的x位置
        let x_contentOri = kScreenWidth - self.width_backgroudView! - padding
        var contentBackgroudView = UIView.init(frame: CGRect.init(x: x_contentOri,
                                                           y: kStatusBarHeight,
                                                           width: self.width_backgroudView!,
                                                           height: self.height_backgroudView!))
        contentBackgroudView.backgroundColor = .white
        contentBackgroudView.layer.cornerRadius = 6.0
        contentBackgroudView.alpha = 1
        self.addSubview(contentBackgroudView)
        
        
        let heightContentPickerView = 2 * self.height_backgroudView!
        var contentPickView = UIPickerView.init(frame: CGRect.init(x: 0,
                                                                   y: -(heightContentPickerView / 4),
                                                                   width: self.width_backgroudView!,
                                                                   height: heightContentPickerView))
        contentPickView.delegate = self
        contentPickView.dataSource = self
        
        contentBackgroudView.addSubview(contentPickView)
        
        // 选中按钮
        // arrows_right
        let selectedImg = UIImageView.init(frame: CGRect.init(x: 0, y: ((self.height_backgroudView! - width_selectedImg) / 2), width: width_selectedImg, height: width_selectedImg))
        selectedImg.image = UIImage.init(named: "arrows_right")
        contentBackgroudView.addSubview(selectedImg)
        
        
        
    }
    
    
    
    public func showInView(parentView:UIView)
    {
        parentView.addSubview(self)
    }
    
    @objc func alphaBackGroudViewTouchUpInside(_ tapGes : UITapGestureRecognizer)
    {
        print(#function)
    }
    
    //MARK: - UIPickerViewDelegate
    public func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        print("count is :\((self.dataScrollSelect?.dataArr.count)!)")
        return (self.dataScrollSelect?.dataArr.count)!
    }
    
    
    
    //MARK: - UIPickerViewDataSource

    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return self.height_backgroudView! / 15
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return self.width_backgroudView!
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let tempLabel = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: self.width_backgroudView!, height: self.height_backgroudView! / 15))
        let text = self.dataScrollSelect?.dataArr[row]
        tempLabel.text = text
        tempLabel.textAlignment = .center
        view?.addSubview(tempLabel)
        
        return tempLabel
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(#function)
        
        // mothed 1
        delegate?.scrollSelectPopViewSelected!(self, didSelectRow: row, inComponent: component)
        
        
        // mothed 2
//        if delegate != nil
//        {
//            if delegate!.responds(to: #selector(delegate!.scrollSelectPopViewSelected(_:didSelectRow:inComponent:)))
//            {
//                delegate!.scrollSelectPopViewSelected!(self, didSelectRow: row, inComponent: component)
//            }
//        }
        
    }
}

@objc protocol ScrollSelectPopViewDelegate: NSObjectProtocol {

    @objc optional func scrollSelectPopViewSelected(_ pickerView: ScrollSelectPopView, didSelectRow row: Int, inComponent component: Int)
    
    @objc optional func scrollSelectPopViewCancel(_ pickerView: ScrollSelectPopView, didSelectRow row: Int, inComponent component: Int)
    
}
