//
//  ColorsTableViewController.swift
//  Rainbow
//
//  Created by Aaron Cleveland on 12/9/19.
//  Copyright © 2019 Aaron Cleveland. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {
    
    var colors: [MyColor] = [MyColor(name: "Red", color: .systemRed),
                             MyColor(name: "Orange", color: .systemOrange),
                             MyColor(name: "Yellow", color: .systemYellow),
                             MyColor(name: "Green", color: .systemGreen),
                             MyColor(name: "Blue", color: .systemBlue),
                             MyColor(name: "Purple", color: .systemPurple)]

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return colors.count
    }
    
    
    // Lets us customize the cell. Set the text of its labels, give it different colors, and so on.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)

        // Configure the cell...
        let color = colors[indexPath.row]
        
        cell.textLabel?.text = color.name

        return cell
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    // check the segues identifier
    // get the view controller you are going to (cast the segue.destination)
    // get the information you want to pass
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // where are we going?
        if segue.identifier == "ShowColorDetail" {
            // we know we are going to the color detail view controller.
            
            // what are we giving to the new view controller?
            if let indexPath = tableView.indexPathForSelectedRow {
                let colorDetailVC = segue.destination as? ColorsDetailViewController
                
                let color = colors[indexPath.row]
                colorDetailVC?.cellColor = color
            }
        }
    }
}
