//
//  WelcomeVC.swift
//  TYCloudAlarm
//
//  Created by carlosk on 15/9/5.
//  Copyright (c) 2015年 carlosk. All rights reserved.
//欢迎界面

import UIKit

class WelcomeVC: BaseVC {
	
	@IBOutlet weak var bgIV: UIImageView!
	override func createViews() {
		super.createViews()
		bgIV.image = COAppTool.getLauchImage()
        bgIV.image = UIImage(named: "LaunchImage九宫格")

	}
	override func createEvets() {
		super.createEvets()
	}
	override func createData() {
		super.createData()
	}
    
	override func fillViewsOnResume() {
		super.fillViewsOnResume()
        
//		OrganizationData.clearLocalData()
//		
//        //如果有数据,则重新获取用户信息,然后进入首页
//		//如果没有数据,则进入登陆页面
//		CU.delay(1, task: { () -> () in
//			
//            let defaults = NSUserDefaults.standardUserDefaults().valueForKey("GuidePageVC")
//            
//            if (defaults == nil){
//                let rootVC :GuidePageVC = GuidePageVC()
//                self.presentViewController(rootVC, animated: false, completion: nil)
//                
//                NSUserDefaults.standardUserDefaults().setValue(1, forKey: "GuidePageVC")
//                NSUserDefaults.standardUserDefaults().synchronize()
//                
//            }else{
//                
//                LoginVC.gotoLoginVC()
//            }
//            
//		})
        
        
	}
	

    
	override func viewWillAppear(animated: Bool) {
		super.viewWillAppear(animated)
		navigationController?.navigationBarHidden = true
	}
	override func viewWillDisappear(animated: Bool) {
		super.viewWillDisappear(animated)
		navigationController?.navigationBarHidden = false
	}
	
}
