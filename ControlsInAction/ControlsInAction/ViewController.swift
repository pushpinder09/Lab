//
//  ViewController.swift
//  ControlsInAction
//
//  Created by Student on 22/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Print: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var sliderr: UIView!
    
    
    @IBAction func printBtnTapped(_ sender: UIButton) {
        print("Hello There!")
    }
    @IBAction func `switch`(_ sender: UISwitch) {
        if sender.isOn{
            print("Button is turned On!")
            view.backgroundColor = .white
        
        }
        else{
            print("Button is turned off!")
            view.backgroundColor = .black
        }
    }
    
    @IBAction func slider(_ sender: UISlider) {
        print(sender.value)
    }
    
   
    @IBAction func textField(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
    @IBAction func editingChanged(_ sender: UITextField) {
    }
    @IBAction func locationTapped(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in:view)
        print(location)
    }
}

