//
//  PurpleViewController.swift
//  TabBar
//
//  Created by Student on 04/03/24.
//

import UIKit

class PurpleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarItem.badgeValue = "1"
        // Do any additional setup after loading the view.
    }

    override func viewWillDisappear(_ animated: Bool) {
        tabBarItem.badgeValue = nil
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
