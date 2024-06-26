//
//  Checklist.swift
//  TimHortons
//
//  Created by Alireza Khibari on 2024-06-20.
//

import UIKit

class Checklist: NSObject, Codable {
    
    var name = ""
    var items = [ChecklistItem]()
    
    init(name: String) {
      self.name = name
      super.init()
    }

}
