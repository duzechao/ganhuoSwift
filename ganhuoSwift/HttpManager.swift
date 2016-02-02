
//
//  HttpManager.swift
//  ganhuoSwift
//
//  Created by zajo on 16/2/2.
//  Copyright © 2016年 dzc. All rights reserved.
//
import AlamofireObjectMapper
import Alamofire
class HttpManager{
    static func getData(){
        Alamofire.request(.GET, "http://gank.avosapps.com/api/data/iOS/20/2").responseObject{
            (response:Response<DataResult,NSError>) in
                let results = response.result.value?.results
                for item in results!{
                    print(item.who!)
                }
            
            
        }
    }
}