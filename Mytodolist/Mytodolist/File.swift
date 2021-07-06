//
//  File.swift
//  Mytodolist
//
//  Created by GSM08 on 2021/07/06.
//

import Foundation

struct Todolist {
    var title: String = ""
    var content: String?
    var isComplete: Bool = false
    
    init(title: String, content: String?, isComplete: Bool = false) {
        self.title = title
        self.content = content
        self.isComplete = isComplete
    }
}
