//
//  FirstViewController.swift
//  R_Init
//
//  Created by xiaoshi on 16/6/23.
//  Copyright © 2016年 https://github.com/shijinliang, http://blog.csdn.net/sjl_leaf. All rights reserved.
//

import UIKit

let firstNoti : String = "FirstClickEmptyTabBar"
let secondNoti : String = "SecondClickEmptyTabBar"
let thirdNoti : String = "ThirdClickEmptyTabBar"


class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //每个主界面都各注册一个通知，因为你不知道中间的按钮是什么时候点击的。
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(FirstViewController.openInsideView), name: firstNoti, object: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        print("deinit")
    }
    

    @IBAction func click(sender: AnyObject) {
        
        print("打开里面的界面了。")
        
    }
    
    func openInsideView() -> Void {
        let viewCtrl = InsideViewController()
        self.navigationController?.pushViewController(viewCtrl, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
