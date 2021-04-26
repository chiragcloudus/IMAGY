//
//  ChiragService.swift
//  MoyaApiStracher
//
//  Created by Cloudus on 23/04/21.
//

import Foundation
import Moya

// Endpoints
enum ChiragService {
    case getBackground(device: String, key: String)
    case getReadymadeTemplate(device: String, key: String, cat_id: String, ratio: String)
}


extension ChiragService: TargetType {
    
    var baseURL: URL {
        return Settings.shared.apiURL
    }
    var path: String {
        switch self {
        case .getBackground(_, _):
            return "/API/V1/background"
        case .getReadymadeTemplate(_, _, _, _):
            return "/API/V1/poster/swiperCat"
        }
    }
    
    var method: Moya.Method {
        return .post // all methods use post by api design
    }
    
    var headers: [String: String]? {
        switch self {
        case .getBackground(_, _):
            return ["Content-Type":"application/x-www-form-urlencoded"]
        case .getReadymadeTemplate(_, _, _, _):
            return ["Content-Type":"application/x-www-form-urlencoded"]
        }
    }
    
    var task: Task {
        switch self { 
            
        case let .getBackground(device, key):
            return .requestParameters(parameters: [
                "device": device,
                "key": key
                ], encoding: URLEncoding.default)
        
        case let .getReadymadeTemplate(device, key, cat_id, ratio):
            return .requestParameters(parameters: ["device":device,"key":key,"cat_id":cat_id,"ratio":ratio], encoding: URLEncoding.default)
            
            
        }
    }
    
    var sampleData: Data {
        return Data()
    }
}


final class ChiragApi {

    static let shared = ChiragApi()

    let provider: MoyaProvider<ChiragService>
    
    init() {
        self.provider = MoyaProvider<ChiragService>()
    }

}
