//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Student on 02/04/24.
//

import UIKit

class AthleteFormViewController: UIViewController {
    
    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var team: UITextField!
  
    @IBOutlet weak var namefield: UITextField!
    

    @IBOutlet weak var leaguefield: UITextField!
    
    
    var athlete :Athlete?
    init?(coder: NSCoder,athlete:Athlete?) {
        super.init(coder: coder)
        self.athlete = athlete
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        func updateView(){
            if let athlete = athlete
            {
                let name = namefield.text
                let age = age.text
                let league = leaguefield.text
                let team = team.text
                            }
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func savebutton(_ sender: Any) {
        
        guard let name = namefield.text,
            let ageString = age.text,
              let age = Int(ageString),
            let league = leaguefield.text,
            let team = team.text else {return}
        athlete = Athlete(name: name, age: age, league: league, team: team)
      
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
