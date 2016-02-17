//
//  UILabel+CO.swift
//  TYCloudAlarm
//
//  Created by carlosk on 15/2/23.
//  Copyright (c) 2015年 carlosk. All rights reserved.
//

import UIKit

public extension UILabel {
    
	//根据内容和宽度获取高度
	public func getWidthWithContent()->CGFloat{
		if text == nil {
			return 0
		}

		let atts = [NSFontAttributeName:font]
		let text1 = text! as NSString
		
		let size = CGSizeMake(1000, height())
		
		let rect = text1.boundingRectWithSize(size, options: .UsesLineFragmentOrigin, attributes: atts, context: NSStringDrawingContext())
		return rect.size.width
	}
		
    public func getHeightWithContent()->CGFloat{
        if text == nil {
            return 0
        }

        let atts = [NSFontAttributeName:font]
        let text1 = text! as NSString
        
        let size = CGSizeMake(width(), 10000)
        
        let rect = text1.boundingRectWithSize(size, options: .UsesLineFragmentOrigin, attributes: atts, context: NSStringDrawingContext())
        return rect.size.height
	}

}
