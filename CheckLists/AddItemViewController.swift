//
//  AddItemTableViewController.swift
//  CheckLists
//
//  Created by Irma Blanco on 06/05/2018.
//  Copyright © 2018 Irma Blanco. All rights reserved.
//

import UIKit

class AddItemViewController: UITableViewController, UITextFieldDelegate {

  @IBOutlet weak var doneBarButton: UIBarButtonItem!
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


  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    
    let oldText = textField.text!
    let stringRange = Range(range, in:oldText)!
    let newText = oldText.replacingCharacters(in: stringRange, with: string)
    
//    if newText.isEmpty {
//      doneBarButton.isEnabled = false
//    }else{
//      doneBarButton.isEnabled = true
//    }
    
    doneBarButton.isEnabled = !newText.isEmpty
    return true
  }

}
