//
//  HTTPSession.swift
//  Mission_Apps
//
//  Created by 高橋直也 on 2019/10/14.
//  Copyright © 2019 高橋直也. All rights reserved.
//

import Foundation

class HTTPSession: AppDelegate {
    func get(_ areaCode:String) {
        let area = areaCode
        let config: URLSessionConfiguration = URLSessionConfiguration.default
        let session: URLSession = URLSession(configuration: config)
        let url: URL = URL(string: "https://webservice.recruit.co.jp/hotpepper/gourmet/v1/?key=\(hotpepperAPIKey)&large_area=\(area)&format=json")!
        print(url)
        
        let task = session.dataTask(with: url, completionHandler: {(data,responds,error) in
            guard let dataTask = data else {return}
            let str: String = String(data: dataTask, encoding: .utf8)!
            print(str)
        })
        task.resume()
    }
}
