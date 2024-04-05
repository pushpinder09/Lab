//
//  ViewController.swift
//  Traffic_Light
//
//  Created by student on 26/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func UnwindToRed(unwindSegue: UIStoryboardSegue){
        print("Back to red")
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = textField.text
    }
}

