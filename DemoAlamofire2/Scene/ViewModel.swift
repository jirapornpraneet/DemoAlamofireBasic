//
//  ViewModel.swift
//  DemoAlamofire2
//
//  Created by Piesoft on 16/2/2566 BE.
//

import Foundation
import Alamofire
import AlamofireObjectMapper
import ObjectMapper

class ViewModel {
    
    var info: UserInfo?
    var url = "https://swapi.dev/api/people/1/"
    
    func requestCurrency(_ completion: ((_ success: Bool) -> ())? = nil) {
        let request = AF.request(self.url, method: .get, parameters: nil, encoding:URLEncoding.default, headers: nil)
            .validate(statusCode:  200..<300)
            .validate(contentType: ["application/json"])
        request.responseJSON { response in
            switch response.result {
            case .success(let value):
                guard let castingValue = value as? [String: Any] else { return }
                guard let data = Mapper<UserInfo>().map(JSON: castingValue) else { return }
                self.info = data
                completion?(true)
            case .failure(let error):
                print(error.localizedDescription)
                completion?(false)
            }
        }
    }
}
