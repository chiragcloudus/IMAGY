//
//  ViewController.swift
//  MoyaApiStracher
//
//  Created by Cloudus on 23/04/21.
//

import UIKit
import Moya
import RxSwift
var authkey = "gfaZjrzze5kQiyuSh9f1u7yEUeA="

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        ChiragApi.shared.provider.request(.getBackground(device: "1", key: authkey), completion: { result in
//            switch result {
//            case .success(let status):
//                guard let json = try? status.mapJSON() else {
//                    return }
//                print(json)
//            case .failure(let err):
//                print(err)
//            }
//        })
         ChiragApi.shared.provider.request(.getReadymadeTemplate(device: "1", key: authkey, cat_id: "0", ratio: "0"), completion: { result in
            switch result {
            case .success(let status):
                guard let json = try? status.mapJSON() else {
                    return }
                print(json)
            case .failure(let err):
                print(err)
            }
        })
    }


}

