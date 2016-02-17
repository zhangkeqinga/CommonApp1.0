//
//  COFileTool.swift
//  iFU_Doctor
//
//  Created by carlosk on 15/7/6.
//  Copyright (c) 2015年 carlosk. All rights reserved.
//

import UIKit

class COFileTool: COBaseTool {
    
    
//    class func clearCahcheImage() {
//    
//        //删除缓存中的图片  + "/default"
//        let imgPath = UnitPath.dirLib() + "/Caches" + "/default"
//        do{
//        try NSFileManager.defaultManager().removeItemAtPath(imgPath)
//        }catch{
//        }
//    
//    }
    
    
	//存储图片
	class func saveImage(image:UIImage,fileName:String)->String?{
        
        // 1、获得沙盒的根路径
        let home = NSHomeDirectory() as NSString;
        // 2、获得Documents路径，使用NSString对象的stringByAppendingPathComponent()方法拼接路径
        let docPath = home.stringByAppendingPathComponent("Documents") as NSString;
        // 3、获取文本文件路径
        let filePath = docPath.stringByAppendingPathComponent(fileName);
        // 4、图片
        let imageData:NSData = UIImageJPEGRepresentation(image, 0.1)!;
        // 5、将数据写入文件中
        let results = imageData.writeToFile(filePath, atomically: true)
        
        if (results) {
            return filePath
        }else{
            return ""
        }
	}
    
    
    class func saveWithFile(dataSource:NSMutableArray) {
        /// 1、获得沙盒的根路径
        let home = NSHomeDirectory() as NSString;
        /// 2、获得Documents路径，使用NSString对象的stringByAppendingPathComponent()方法拼接路径
        let docPath = home.stringByAppendingPathComponent("Documents") as NSString;
        /// 3、获取文本文件路径
        let filePath = docPath.stringByAppendingPathComponent("data.text");
//        let dataSource = NSMutableArray();
//        dataSource.addObject("衣带渐宽终不悔");
//        dataSource.addObject("为伊消得人憔悴");
//        dataSource.addObject("故国不堪回首明月中");
//        dataSource.addObject("人生若只如初见");
//        dataSource.addObject("暮然回首，那人却在灯火阑珊处");
        // 4、将数据写入文件中
        
        dataSource.writeToFile(filePath, atomically: true);
        log("filePath＝\(filePath)");
    }
    
    
    class func readWithFile()->NSMutableArray {
        /// 1、获得沙盒的根路径
        let home = NSHomeDirectory() as NSString;
        /// 2、获得Documents路径，使用NSString对象的stringByAppendingPathComponent()方法拼接路径
        let docPath = home.stringByAppendingPathComponent("Documents") as NSString;
        /// 3、获取文本文件路径
        log("docPath＝\(docPath)");

        let filePath = docPath.stringByAppendingPathComponent("data.text");
        let dataSource = NSMutableArray(contentsOfFile: filePath);
        
        let dataArray = NSMutableArray()
        log("dataArray＝\(dataSource)");
        
        if dataSource != nil{
            return dataSource!
        }else{
            return dataArray
        }
        

    }
    
    
    //读取图片
    class func readImageWithFile(filePath:String) ->UIImage{
        let home = NSHomeDirectory() as NSString
        // 1、获得Documents路径，使用NSString对象的stringByAppendingPathComponent()方法拼接路径
        let docPath = home.stringByAppendingPathComponent("Documents") as NSString;
        // 2、获取文本文件路径
        let filePath = docPath.stringByAppendingPathComponent("filePath")
        // 3、通过路径读取图片
        let savedImage = UIImage(contentsOfFile: filePath)! as UIImage
        
        return savedImage
    }
    


}
