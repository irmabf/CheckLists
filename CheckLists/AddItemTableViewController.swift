//
//  AddItemTableViewController.swift
//  CheckLists
//
//  Created by Irma Blanco on 06/05/2018.
//  Copyright © 2018 Irma Blanco. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {

  @IBOutlet weak var textField: UITextField!
  @IBAction func cancel() {
    navigationController?.popViewController(animated: true)
  }
  @IBAction func done() {
    print("Contents of the text field: \(textField.text!)")
    navigationController?.popViewController(animated: true)
  }
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.becomeFirstResponder()
        navigationItem.largeTitleDisplayMode = .never

    }
  
  override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
    return nil
  }






}
