//
//  Quote.swift
//  PassDataTableView
//
//  Created by Apple on 18/02/18.
//  Copyright © 2018 WowDreamApps. All rights reserved.
//

import Foundation

struct Quote {
    var category: String?
    var author: String?
    var quote: String?
    
    
    init(category: String, author: String, quote: String) {
        self.category = category
        self.author = author
        self.quote = quote
        
    }
}
