//
//  UserInfo.swift
//  DemoAlamofire2
//
//  Created by Piesoft on 16/2/2566 BE.
//

import Foundation
import ObjectMapper
import AlamofireObjectMapper

class UserInfo: Mappable {
    
    var name = ""
    var height = ""
    var hairColor = ""

    
    required init?(map: Map) {}
    
    /// Mapping  key
    func mapping(map: Map) {
        name <- map["name"]
        height <- map["height"]
        hairColor <- map["hair_color"]
    }
}
