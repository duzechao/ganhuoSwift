//
//  Results.swift
//  ganhuoSwift
//
//  Created by zajo on 16/02/01
//  Copyright (c) dzc. All rights reserved.
//


import ObjectMapper
class ResultItem: Mappable {

    var updatedAt: String?

    var who: String?

    var publishedAt: String?

    var objectId: String?

    var used: Bool = false

    var type: String?

    var createdAt: String?

    var desc: String?

    var url: String?
    required init?(_ map: Map){
        
    }
    
    func mapping(map: Map) {
        updatedAt <- map["updateAt"]
        who <- map["who"]
        publishedAt <- map["publishedAt"]
        objectId <- map["objectId"]
        used <- map["used"]
        type <- map["type"]
        createdAt <- map["createdAt"]
        desc <- map["desc"]
        url <- map["url"]
    }

}