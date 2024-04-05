//
//  ViewController.swift
//  Login
//
//  Created by Student on 28/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var destinationTextField: UITextField!
    
    @IBOutlet weak var forgotUserName: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else
        {
            return
        }
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserName {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = destinationTextField.text
        }
       
    }

    @IBAction func forgotPasswordButton(_ sender: Any) {
        
        performSegue(withIdentifier: "tolandingpage", sender: sender)
    }
    
    @IBAction func forgotUserNameButton(_ sender: Any) {
        performSegue(withIdentifier: "tolandingpage", sender: sender)
    }
}

