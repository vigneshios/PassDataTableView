//
//  DetailsVC.swift
//  PassDataTableView
//
//  Created by Apple on 18/02/18.
//  Copyright © 2018 WowDreamApps. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController {

    //Outlets:
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var quoteLabel: UILabel!
    
    //Variables:
    
    var quoteDetails : Quote?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let authorName = quoteDetails {
            authorLabel.text = "Name: \(authorName.author!)"
        }
        if let categoryName = quoteDetails {
            categoryLabel.text = "Category: \(categoryName.category!)"
        }
        if let quotes = quoteDetails {
            quoteLabel.text = quotes.quote
        }

    }

    

}
