//
//  AddItemViewController.swift
//  CheckLists
//
//  Created by Irma Blanco on 06/05/2018.
//  Copyright © 2018 Irma Blanco. All rights reserved.
//

import UIKit

protocol AddItemViewControllerDelegate: class {
  func addItemViewControllerDidCancel(
    _ controller: AddItemViewController)
  func addItemViewController(
    _ controller: AddItemViewController,
    didFinishAdding item: ChecklistItem)
  func addItemViewController(
    _ controller: AddItemViewController,
    didFinishEditing item: ChecklistItem)
}



class AddItemViewController: UITableViewController, UITextFieldDelegate {

  weak var delegate: AddItemViewControllerDelegate?
  var itemToEdit: ChecklistItem?
  
  @IBOutlet weak var doneBarButton: UIBarButtonItem!
  @IBOutlet weak var textField: UITextField!
  
  @IBAction func cancel() {
    delegate?.addItemViewControllerDidCancel(self)
  }
  @IBAction func done() {
    if let itemToEdit = itemToEdit {
      itemToEdit.text = textField.text!
      delegate?.addItemViewController(self, didFinishEditing: itemToEdit)
    }else{
      let item = ChecklistItem()
      item.text = textField.text!
      item.checked = false
      delegate?.addItemViewController(self, didFinishAdding: item)
    }
  
  }
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
        textField.becomeFirstResponder()
        navigationItem.largeTitleDisplayMode = .never
      
      if let item = itemToEdit {
        title = "Edit item"
        textField.text = item.text
        doneBarButton.isEnabled = true
      }

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
