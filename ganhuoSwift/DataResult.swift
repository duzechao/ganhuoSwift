//
//  ESRootClass.swift
//  ganhuoSwift
//
//  Created by zajo on 16/02/01
//  Copyright (c) dzc. All rights reserved.
//


import ObjectMapper
class DataResult: Mappable {

    var error: Bool = false

    var results: [ResultItem]?

    required init?(_ map: Map){
        
    }
    
    func mapping(map: Map) {
        error <- map["error"]
        results <- map["results"]
    }
}