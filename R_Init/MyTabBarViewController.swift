//
//  MyTabBarViewController.swift
//  R_Init
//
//  Created by xiaoshi on 16/6/23.
//  Copyright © 2016年 https://github.com/shijinliang, http://blog.csdn.net/sjl_leaf. All rights reserved.
//

import UIKit

class MyTabBarViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool {
        
        if viewController .isKindOfClass(EmptyViewController.classForCoder()) {
            print("这个不响应 tabbar 当前所在tabbar控制器", self.selectedIndex)
            //发送通知
            
            //可以先判断一下，当前是在哪个tabbar，然后发送对应的通知。
            
            var name : String = ""
            if self.selectedIndex == 0 {
                name = firstNoti
            } else if self.selectedIndex == 1 {
                name = secondNoti
            } else if self.selectedIndex == 2 {
                name = thirdNoti
            }
            
            //第一个tabbar的
            NSNotificationCenter.defaultCenter().postNotificationName(name, object: nil)
            return false
        }
        
        return true
    }
    

}
