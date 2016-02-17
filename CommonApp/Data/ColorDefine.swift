//
//  ColorDefine.swift
//  BDaoyou
//
//  Created by carlosk on 15/1/23.
//  Copyright (c) 2015年 palmyou. All rights reserved.
//

//存储本项目的颜色
import UIKit

extension UIColor {
    
    
    class func rgbColor(r:CGFloat,g:CGFloat,b:CGFloat,alpha:CGFloat) ->UIColor {
        return UIColor(red: r/225.0, green:g/225.0, blue: b/225.0, alpha: alpha)
    }
    //导航栏背景色-浅蓝色
    class func navBlueBGColor() ->UIColor {
        return UIColor.rgbColor(58, g: 153, b: 235, alpha: 1)
    }

    
	//MARK: 通用
	//界面的背景色
	class func vcColor() ->UIColor {
		return UIColor.createColorWithString("#ededed")
	}
	//c1
	class func c1()->UIColor {
		return UIColor.createColorWithString("#a71d32")
	}
	//导航栏的背景色
	class func navBGColor() ->UIColor {
//		return UIColor.createColorWithString("#000000")
//		return UIColor(patternImage: UIImage(named: "导航栏背景色")!)
		return UIColor.createColorWithString("#a71d32")
	}
	//登录界面的顶部的UILabel的颜色
	class func loginTopTitleColor() ->UIColor {
        return UIColor.createColorWithString("#B6002A")
//		return UIColor(patternImage: UIImage(named: "导航栏背景色")!)
	}
	
	class func cellDiver()-> UIColor {
		return UIColor.createColorWithString("#afafaf")
	}
	//默认c2是分割线
	class func c2()-> UIColor {
		return UIColor.createColorWithString("#afafaf")
	}
	
    class func vcColor1()-> UIColor {
        return UIColor.createColorWithString("#f6f6f6")
    }
    
    class func line1()-> UIColor {
        return UIColor.createColorWithString("#D0D0D0")  //208
    }
    
    //#
	//MARK: Tabbar相关
	class func tabarItemBG() ->UIColor {
		return UIColor.createColorWithString("#f9f9f9")
	}
	//底部bar的没有选中的文字颜色
	class func tabarUnSelectedItemLabelTextColor() ->UIColor {
		return UIColor.createColorWithString("#8fa2af")
	}
	class func tabarSeletedItemBG() ->UIColor {
		return UIColor.createColorWithString("#b22222")
	}
	
	//MARK: 报警分类相关
	
	//item未读按钮的背景色
	class func alarmTypeItemUnreadBg()-> UIColor {
		return UIColor.createColorWithString("#b22222")
	}
	//MARK: 报警列表

	//MARK: 布防
	class func deployAttributeCellTitle()-> UIColor {
		return UIColor.createColorWithString("#990032")
	}
	//MARK: 查询相关
	//查询分类的item
	class func queryCategoryItemNormal() -> UIColor{
		return UIColor.createColorWithString("#ca6567")
	}
	class func queryCategoryItemPress() -> UIColor{
		return UIColor.createColorWithString("#feb9b8")
	}
	
	//分类的按钮背景色
	class func alarmTypeItemBgs() -> [UIColor] {
		//		,"#3ac174"
		let colorStr = ["#dc416f","#ef6a00","#fbcc0f","#397fcf","#42b8e2"]
		var cs = [UIColor]()
		for index in 0...colorStr.count-1 {
			cs.append(createColorWithString(colorStr[index]))
		}
		return cs
	}
	
	class func alarmTypeItemPressBgs() -> [UIColor] {
		//		,"#33b86c"
		let colorStr = ["#ce3160","#da6203","#ecbf09","#2d74c5","#34aad4"]
		var cs = [UIColor]()
		for index in 0...colorStr.count-1 {
			cs.append(createColorWithString(colorStr[index]))
		}
		return cs
	}
    
    
    //分类的报警标题背景色
    class func alarmTypeItemTitle(index:Int ) -> UIColor {
//        let colorStr = ["#dc416f","#ef6a00","#fbcc0f","#397fcf","#42b8e2"]
        let colorStr = ["#ff513e","#fc9f04","#b969fe","#37b5fb","#22c9ac"]

        if(colorStr.count > index){
            return UIColor.createColorWithString(colorStr[index])
        }else{
            return UIColor.createColorWithString(colorStr[0])
        }
    }

}
