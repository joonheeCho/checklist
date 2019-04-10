//
//  ChecklistItem.swift
//  Checklist
//
//  Created by Release on 10/04/2019.
//  Copyright © 2019 joonhee. All rights reserved.
//

import Foundation

class ChecklistItem {
    var text = ""
    var checked = false
    
    /* For toggling */
    func toggleChecked() {
        checked = !checked
    }
}
