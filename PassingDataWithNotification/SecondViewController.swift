//
//  SecondViewController.swift
//  PassingDataWithNotification
//
//  Created by Ashish on 10/3/19.
//  Copyright © 2019 Greenhouse. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

  
    }
    
    @IBAction func btnArsenal(_ sender: Any) {
        NotificationCenter.default.post(name: .Arsenal, object: nil)
    }
    
    @IBAction func btnBarcelona(_ sender: Any) {
        NotificationCenter.default.post(name: .Barcelona, object: nil)
    }
    
}
