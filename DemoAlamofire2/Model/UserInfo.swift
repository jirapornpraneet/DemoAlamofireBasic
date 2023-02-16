//
//  UserInfo.swift
//  DemoAlamofire2
//
//  Created by Piesoft on 16/2/2566 BE.
//

import Foundation
import ObjectMapper
import AlamofireObjectMapper

class CurrencyInfo: Mappable {
    
    var name = ""
    var height = ""
    var hair_color = ""

    
    required init?(map: Map) {}
    
    /// Mapping  key
    func mapping(map: Map) {
        name <- map["name"]
        height <- map["height"]
        hair_color <- map["hair_color"]
    }
}
