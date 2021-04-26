//
//  Settings.swift
//  MoyaApiStracher
//
//  Created by Cloudus on 23/04/21.
//

import Foundation

struct Settings {
    static var shared = Settings()
    
    let apiURL: URL
    
    private init() {
        let path = Bundle.main.path(forResource: "Info", ofType: "plist")!
        let plist = NSDictionary(contentsOfFile: path) as! [AnyHashable: Any]
        let settings = plist["AppSettings"] as! [AnyHashable: Any]
        apiURL = URL(string: (settings["ServerBaseURL"] as! String))!
       // print("Settings loaded: \(self)")
    }
}
