//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by student on 03/04/24.
//

import UIKit

class FoodTableViewController: UITableViewController {
    var meals : [Meal]{
        return[
         Meal(name: "Breakfast", food: [
         Food(name: "Dosa", description: "South Indian Dish"),
         Food(name: "Chole Bhature", description: "Famous north breakfast"),
         Food(name: "Oats", description: "Healthy")
         ]),
         Meal(name: "Lunch", food: [
         Food(name: "Rice", description: "Healthy to eat"),
         Food(name: "Sushi", description: "Famous Japan Dish"),
         Food(name: "Roti-Sabzi", description: "Everyday food")
         ]),
         Meal(name: "Dinner", food: [
         Food(name: "Oats", description: "Healthy to eat"),
         Food(name: "Noodles", description: "A yummy dinner"),
         Food(name: "Salad", description: "For Diet-conscious people")
         ]),
        ]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let meal = meals[section]
        return meal.food.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        let meal = meals[indexPath.section]
        let rowFood = meal.food[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(rowFood.name)"
        content.secondaryText = "\(rowFood.description)"
        cell.contentConfiguration = content
        cell.showsReorderControl = true

        // Configure the cell...

        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let meal = meals[section]
        return meal.name
    }


}
