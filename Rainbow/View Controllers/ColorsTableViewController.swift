//
//  ColorsTableViewController.swift
//  Rainbow
//
//  Created by Kelley Henican on 1/21/20.
//  Copyright © 2020 Kelley Henican. All rights reserved.
//

import UIKit

class ColorsTableViewController: UITableViewController {
    
    var colors: [MyColor] = [MyColor(name: "Red", color: .red),
                             MyColor(name: "Orange", color: .orange),
                             MyColor(name: "Yellow", color: .yellow),
                             MyColor(name: "Green", color: .green),
                             MyColor(name: "Blue", color: .blue),
                             MyColor(name: "Cyan", color: .cyan),
                             MyColor(name: "Purple", color: .purple),
                             
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    // MARK: - Table view data source

    // These are our 2 required data source methods!! Must have!
    // How many rows in our table view??

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return colors.count
    }

    // what data is in each cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        let color = colors[indexPath.row]
        cell.textLabel?.text = color.name

        return cell
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "ShowColorSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow,
                let colorDetailVC = segue.destination as?
                ColorDetailViewController else {
                    return
            }
        }
    }
    

}
