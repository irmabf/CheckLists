//
//  AddItemTableViewController.swift
//  CheckLists
//
//  Created by Irma Blanco on 06/05/2018.
//  Copyright © 2018 Irma Blanco. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {

  @IBAction func cancel() {
    navigationController?.popViewController(animated: true)
  }
  @IBAction func done() {
    navigationController?.popViewController(animated: true)
  }
    override func viewDidLoad() {
        super.viewDidLoad()
      
        navigationItem.largeTitleDisplayMode = .never

    }






}
