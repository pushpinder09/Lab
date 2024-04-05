//
//  ViewController.swift
//  TabBar
//
//  Created by Student on 04/03/24.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarItem.badgeValue = "1"
        // Do any additional setup after loading the view.
    }

    override func viewWillDisappear(_ animated: Bool) {
        tabBarItem.badgeValue = nil
    }

}

