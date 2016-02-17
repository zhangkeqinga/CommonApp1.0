//
//  HttpService.swift
//  COXbry
//
//  Created by carlosk on 15/1/5.
//  Copyright (c) 2015年 carlosk. All rights reserved.
//

import UIKit
public class COHttpService: COBaseModel {
	//发送一个请求
	public class func post(threadModel:COThreadM,receiveUIBlock:((threadMsg:COThreadM)->Void)?){
		
        if threadModel.autoShowProgressV {
			currentVC?.showProgressV()
		}
        
		if let _ = receiveUIBlock {
			threadModel.receiveUIBlock = receiveUIBlock
		}
		
        //获取队列
        let aQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0);
        //将事件添加到队列
        dispatch_async(aQueue) { () -> Void in
			
            let types = CONet.getCOHttpOperationTypes()  //模块数组获取
			//循环处理
			for item in types {
				if item.operation(threadModel) {
					break
				}
			}
            
			//发送请求
			//把content和error制作返回的是否正确
			var content : String?
			var error   : NSError?
			var responseStatusCode : Int = 200
            
			if let coHttpConnectType_ = CONet.getCOHttpConnectType() {
				(content,error,responseStatusCode) = coHttpConnectType_.connect(threadModel)
			}else if let connectBlock = CONet.getCOHttpConnectBlock() {
				(content,error,responseStatusCode) = connectBlock(threadModel)
			}
			//拼装成返回是否正确的数据
			//如果有异常统一处理
            
			var isContinue = true
			if let operationBlock = CONet.getCOHttpFillThreadMWithReturnContentBlock(){
				isContinue =  operationBlock(content,error,threadModel,responseStatusCode)
			}
			
            //处理返回
			if isContinue && threadModel.receiveContent != nil  && threadModel.receiveToBackgourdBlock != nil{
				threadModel.receiveToBackgourdBlock!(threadMsg: threadModel)
			}
            
			let mainQueue = dispatch_get_main_queue();
			//处理回调
			dispatch_async(mainQueue, {() -> Void in
			
                if threadModel.autoHideProgressVWithFinishedRequest {
					currentVC?.hideProgressV()
				}
				if(isContinue){
					threadModel.receiveUIBlock?(threadMsg: threadModel)
				}
			})
		}
		
	}
	

}
