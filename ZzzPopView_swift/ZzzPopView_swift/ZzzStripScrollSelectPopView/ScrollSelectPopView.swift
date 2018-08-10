//
//  ScrollSelectPopView.swift
//  ZzzPopView_swift
//
//  Created by zhouzezhou on 2018/8/9.
//  Copyright © 2018 zzz. All rights reserved.
//

import UIKit


class ScrollSelectPopView:UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.frame = UIScreen.main.bounds
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initWithScrollSelectDataFun(data:DataScrollSelect)
    {
        
        self.backgroundColor = .red
        
//        return self
    }
    
    public func showInView(parentView:UIView)
    {
        parentView.addSubview(self)
    }
}

