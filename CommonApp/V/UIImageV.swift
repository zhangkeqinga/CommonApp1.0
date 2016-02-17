//
//  UIImageV.swift
//  TYCloudAlarm
//
//  Created by carlosk on 15/8/30.
//  Copyright (c) 2015年 carlosk. All rights reserved.
//

import UIKit

extension UIImageView{
	
	//设置url
	func setUrl( url:String){
		setUrl(url, placeHoldImageName: nil)
	}
	// 设置url和占位图
	func setUrl(var url: String, placeHoldImageName: String?) {
        
        //url 九宫格
//		url = APIEnum.getBBaseUrl("Aralm") + url
        
        if placeHoldImageName == nil {
			sd_setImageWithURL(NSURL(string: url))
			return
		}
        
        
        sd_setImageWithURL(NSURL(string: url), placeholderImage: UIImage.createWithName(placeHoldImageName!) ,options: SDWebImageOptions.RefreshCached)
        
	}
	
	class func saveCache(url: String, image: UIImage) {
        
        //url 九宫格
//		url = APIEnum.getBBaseUrl("Aralm") + url
		SDWebImageManager.sharedManager().saveImageToCache(image, forURL: NSURL(string:url))
	}
	
}
