//
//  ViewController.swift
//  Mission_Apps
//
//  Created by 高橋直也 on 2019/10/05.
//  Copyright © 2019 高橋直也. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var hokkaidoButton: UIButton!
    
    @IBAction func getListHokkaido(_ sender: Any) {
        let areaCode: String = "Z041"
        let session: HTTPSession = HTTPSession()
        let getList = session.get(areaCode)
        //let codableJson = try JSONDecoder().decode(restaurantList.self, from: getList)
    }
    

}

