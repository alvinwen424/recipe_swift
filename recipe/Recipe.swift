//
//  Recipe.swift
//  recipe
//
//  Created by alvin wen on 7/5/18.
//  Copyright © 2018 alvin wen. All rights reserved.
//

import UIKit

class Recipe: NSObject {
    var title: String
    var content: String
    init (title: String, content: String) {
        self.title = title
        self.content = content
    }
}
