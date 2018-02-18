//
//  QuotesCell.swift
//  PassDataTableView
//
//  Created by Apple on 18/02/18.
//  Copyright © 2018 WowDreamApps. All rights reserved.
//

import UIKit

class QuotesCell: UITableViewCell {
    
    //Outlets:
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var quoteLabel: UILabel!
    
    
    func configureCell(quote: Quote) {
        categoryLabel.text = "Category: \(quote.category!)"
        authorLabel.text = "Said By: \(quote.author!)"
        quoteLabel.text = quote.quote
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
