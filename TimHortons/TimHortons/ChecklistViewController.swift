//
//  ViewController.swift
//  TimHortons
//
//  Created by Alireza Khibari on 2024-06-04.
//

import UIKit

class ChecklistViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: - Table View Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 5
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(
        withIdentifier: "ChecklistItem",
        for: indexPath)
        
        let label = cell.viewWithTag(1000) as! UILabel

         if indexPath.row == 0 {
           label.text = "Dark Roast regular medium size coffee"
         } else if indexPath.row == 1 {
           label.text = "Decaf double double large size coffee"
         } else if indexPath.row == 2 {
           label.text = "Original Blend black small size coffee"
         } else if indexPath.row == 3 {
           label.text = "Mocha Latte medium size"
         } else if indexPath.row == 4 {
           label.text = "Vanilla Latte large size"
         }
      return cell
    }

    // MARK: - Table View Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
              cell.accessoryType = .checkmark
            } else {
              cell.accessoryType = .none
            }
          }
      tableView.deselectRow(at: indexPath, animated: true)
    }

}

