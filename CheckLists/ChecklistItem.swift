//
//  ChecklistItem.swift
//  CheckLists
//
//  Created by Irma Blanco on 06/05/2018.
//  Copyright © 2018 Irma Blanco. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject, Codable {
  var text = ""
  var checked = false
  
  func toggleChecked() {
    checked = !checked
  }
}
