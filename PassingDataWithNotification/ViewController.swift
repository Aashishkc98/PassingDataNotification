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
        NotificationCenter.default.addObserver(self, selector: #selector(Arsenal(notification:)), name: .Arsenal, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(Barcelona(notification:)), name: .Barcelona, object: nil)
    }
    @objc func Arsenal(notification:Notification) {
        lbl.text = "Arsenal"
        img.image = #imageLiteral(resourceName: "Arsenal")
        view.backgroundColor = .red
    }
    @objc func Barcelona(notification:Notification) {
        lbl.text = "Barcelona"
        img.image = #imageLiteral(resourceName: "Barcelona")
        view.backgroundColor = .blue
        
    }

    @IBAction func btnSelect(_ sender: Any) {
        let secondVC = self.storyboard?.instantiateViewController(identifier: "Second") as! SecondViewController
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
}

extension Notification.Name {
    static let Arsenal = Notification.Name("Arsenal")
    static let Barcelona = Notification.Name("Barcelona")
}
