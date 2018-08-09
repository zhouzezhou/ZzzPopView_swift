//
//  ViewController.swift
//  ZzzPopView_swift
//
//  Created by zhouzezhou on 2018/6/20.
//  Copyright © 2018 zzz. All rights reserved.
//

import UIKit


// 当前项目为ZzzPopView swift版本
// objective-c版本：https://github.com/zhouzezhou/ZzzPopView.git

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let regularSelectBtn = UIButton.init(frame: CGRect.init(x: 10, y: 100, width: 300, height: 30))
        regularSelectBtn.backgroundColor = UIColor.red
//        let btnTitle = "纵向长条pickerview"
        regularSelectBtn.setTitle("纵向长条pickerview", for: UIControl.State.normal)
        regularSelectBtn.addTarget(self, action: #selector(self.regularSelectBtnClick), for: UIControl.Event.touchUpInside)
        regularSelectBtn.layer.cornerRadius = 4.0
        self.view!.addSubview(regularSelectBtn)
        
    }

    @objc func regularSelectBtnClick()
    {
        print("regularSelectBtnClick")
    }

}

