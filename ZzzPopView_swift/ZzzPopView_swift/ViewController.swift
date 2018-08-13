//
//  ViewController.swift
//  ZzzPopView_swift
//
//  Created by zhouzezhou on 2018/6/20.
//  Copyright © 2018 zzz. All rights reserved.
//

// 当前项目为ZzzPopView swift版本
// objective-c版本：https://github.com/zhouzezhou/ZzzPopView.git
import UIKit




//#define kScreenWidth UIScreen.main.bounds.size.width

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let heightBtn:CGFloat = 44.0
        
        let regularSelectBtn = UIButton.init(type: .custom)
        regularSelectBtn.backgroundColor = .red
        regularSelectBtn.setTitle("纵向长条pickerview", for: .normal)
        regularSelectBtn.addTarget(self, action: #selector(self.regularSelectBtnClick(button:)) , for: .touchUpInside)
        regularSelectBtn.layer.cornerRadius = 4.0
        self.view!.addSubview(regularSelectBtn)
        
        regularSelectBtn.snp.makeConstraints { (make) in
            make.top.equalTo(self.view).offset(kStatusBarHeight + heightBtn)
            make.left.equalTo(self.view).offset(10)
            make.width.equalTo(kScreenWidth - 20)
            make.height.equalTo(heightBtn)
        }
        
        let stripScrollSelectBtn = UIButton.init(type: .custom)
        stripScrollSelectBtn.backgroundColor = .red
        stripScrollSelectBtn.setTitle("纵向TableView的Popview", for: .normal)
        stripScrollSelectBtn.addTarget(self, action: #selector(self.stripScrollSelectBtnClick) , for: .touchUpInside)
        stripScrollSelectBtn.layer.cornerRadius = 4.0
        self.view!.addSubview(stripScrollSelectBtn)
        
        stripScrollSelectBtn.snp.makeConstraints { (make) in
            make.top.equalTo(regularSelectBtn.snp.bottom).offset(heightBtn)
            make.left.equalTo(self.view).offset(10)
            make.width.equalTo(kScreenWidth - 20)
            make.height.equalTo(heightBtn)
        }
        
        
        let zzz6NumberInputPopViewBtn = UIButton.init(type: .custom)
        zzz6NumberInputPopViewBtn.backgroundColor = .red
        zzz6NumberInputPopViewBtn.setTitle("6位数输入Popview", for: .normal)
        zzz6NumberInputPopViewBtn.addTarget(self, action: #selector(self.zzz6NumberInputPopViewBtnClick) , for: .touchUpInside)
        zzz6NumberInputPopViewBtn.layer.cornerRadius = 4.0
        self.view!.addSubview(zzz6NumberInputPopViewBtn)

        zzz6NumberInputPopViewBtn.snp.makeConstraints { (make) in
            make.top.equalTo(stripScrollSelectBtn.snp.bottom).offset(heightBtn)
            make.left.equalTo(self.view).offset(10)
            make.width.equalTo(kScreenWidth - 20)
            make.height.equalTo(heightBtn)
        }


        let ZzzBankCardChoosePopViewBtn = UIButton.init(type: .custom)
        ZzzBankCardChoosePopViewBtn.backgroundColor = .red
        ZzzBankCardChoosePopViewBtn.setTitle("银行卡选择Popview", for: .normal)
        ZzzBankCardChoosePopViewBtn.addTarget(self, action: #selector(self.ZzzBankCardChoosePopViewBtnClick) , for: .touchUpInside)
        ZzzBankCardChoosePopViewBtn.layer.cornerRadius = 4.0
        self.view!.addSubview(ZzzBankCardChoosePopViewBtn)

        ZzzBankCardChoosePopViewBtn.snp.makeConstraints { (make) in
            make.top.equalTo(zzz6NumberInputPopViewBtn.snp.bottom).offset(heightBtn)
            make.left.equalTo(self.view).offset(10)
            make.width.equalTo(kScreenWidth - 20)
            make.height.equalTo(heightBtn)
        }


        let ZzzDateSelectPopviewBtn = UIButton.init(type: .custom)
        ZzzDateSelectPopviewBtn.backgroundColor = .red
        ZzzDateSelectPopviewBtn.setTitle("起始和终止日期选择Popview", for: .normal)
        ZzzDateSelectPopviewBtn.addTarget(self, action: #selector(self.ZzzDateSelectPopviewBtnClick) , for: .touchUpInside)
        ZzzDateSelectPopviewBtn.layer.cornerRadius = 4.0
        self.view!.addSubview(ZzzDateSelectPopviewBtn)

        ZzzDateSelectPopviewBtn.snp.makeConstraints { (make) in
            make.top.equalTo(ZzzBankCardChoosePopViewBtn.snp.bottom).offset(heightBtn)
            make.left.equalTo(self.view).offset(10)
            make.width.equalTo(kScreenWidth - 20)
            make.height.equalTo(heightBtn)
        }
    }

    //MARK: - Event
    
    @objc func regularSelectBtnClick(button: UIButton)
    {
        print(#function)
        
        // 随便生成一些数据
        let dataArr = DataScrollSelect()
        
        dataArr.dataArr.append("坐姿划船")
        dataArr.dataArr.append("臀推(桥式提臀)")
        dataArr.dataArr.append("腿举")
        dataArr.dataArr.append("杠铃头上举")
        dataArr.dataArr.append("引体向上")
        dataArr.dataArr.append("坐姿高位下拉")
        dataArr.dataArr.append("坐姿哑铃臂弯举")
        dataArr.dataArr.append("坐姿双臂下压")
        dataArr.dataArr.append("杠铃弯举")
        dataArr.dataArr.append("仰卧杠铃屈臂伸")
        dataArr.dataArr.append("俯身支撑臂屈伸")
        dataArr.dataArr.append("仰卧起坐")
        dataArr.dataArr.append("躺姿卷腹")
        dataArr.dataArr.append("坐姿卷腹")
        dataArr.dataArr.append("杠铃站姿挺身")
        dataArr.dataArr.append("站姿抬腿")
        dataArr.dataArr.append("俯卧挺身")
        dataArr.dataArr.append("蝴蝶夹胸")
        dataArr.dataArr.append("斜躺上推")
        dataArr.dataArr.append("坐姿向前推胸")
        dataArr.dataArr.append("弓步前拉夹胸")
        dataArr.dataArr.append("平板哑铃卧推")
        dataArr.dataArr.append("坐姿臂屈伸")
        dataArr.dataArr.append("站姿双臂下摆")
        dataArr.dataArr.append("T型杆划船")
        dataArr.dataArr.append("单手哑铃划船")
        dataArr.dataArr.append("杠铃划船")
        dataArr.dataArr.append("坐姿向前推胸")
        dataArr.dataArr.append("坐姿向前推胸")
        dataArr.dataArr.append("坐姿向前推胸")
        dataArr.dataArr.append("保加利亚深蹲")
        dataArr.dataArr.append("站姿直腿上摆")
        dataArr.dataArr.append("自由重量深蹲")
        dataArr.dataArr.append("坐姿腿屈伸")
        dataArr.dataArr.append("俯卧腿弯曲")
        dataArr.dataArr.append("哈克深蹲")
        dataArr.dataArr.append("臀推")
        
        dataArr.selectedIndex = 0
        
        
//        let regularSelectpopView = ScrollSelectPopView(frame: self.view.bounds)
//        regularSelectpopView.initWithScrollSelectData(data: dataArr)
//        regularSelectpopView.showInView(parentView: self.view)
        
    }
    
    @objc func stripScrollSelectBtnClick()
    {
        print(#function)
        
    }

    @objc func zzz6NumberInputPopViewBtnClick()
    {
        print(#function)
        
    }
    
    @objc func ZzzBankCardChoosePopViewBtnClick()
    {
        print(#function)
        
    }
    
    @objc func ZzzDateSelectPopviewBtnClick()
    {
        print(#function)
        
    }
    
}

