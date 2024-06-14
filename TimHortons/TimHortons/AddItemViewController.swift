//
//  AddItemViewController.swift
//  TimHortons
//
//  Created by Alireza Khibari on 2024-06-14.
//

import UIKit

class AddItemViewController: UITableViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
      navigationItem.largeTitleDisplayMode = .never
  }
    
    // MARK: - Actions
    @IBAction func cancel() {
      navigationController?.popViewController(animated: true)
    }

    @IBAction func done() {
      navigationController?.popViewController(animated: true)
    }

}
