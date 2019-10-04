//
//  ViewController.swift
//  PassingDataWithNotification
//
//  Created by Ashish on 10/3/19.
//  Copyright © 2019 Greenhouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var img: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSelect(_ sender: Any) {
    }
    
}

extension Notification.Name {
    static let Arsenal = Notification.Name("Arsenal")
    static let Barcelona = Notification.Name("Barcelona")
}
