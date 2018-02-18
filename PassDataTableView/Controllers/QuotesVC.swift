//
//  ViewController.swift
//  PassDataTableView
//
//  Created by Apple on 18/02/18.
//  Copyright © 2018 WowDreamApps. All rights reserved.
//

import UIKit

class QuotesVC: UIViewController, UITableViewDataSource,UITableViewDelegate {

    // Outlets:
    @IBOutlet weak var tableView: UITableView!
    
    // Variables:
    var quotes = [Quote]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        callTableViewDelegate()
        
        modelCall()
    }
    
    func modelCall() {
        let quote1 = Quote(category: "Inspirational", author: "Gandhi", quote: "Be the change you want to see in the world")
        let quote2 = Quote(category: "Life", author: "Robert Frost", quote: "In three words I can sum up everything I've learned about life: it goes on.")
        let quote3 = Quote(category: "Leadership", author: "Albert Camus", quote: "Don’t walk in front of me… I may not follow Don’t walk behind me… I may not lead Walk beside me… just be my friend")
        let quote4 = Quote(category: "Learning", author: "Gandhi", quote: "Live as if you were to die tomorrow. Learn as if you were to live forever.")
        let quote5 = Quote(category: "Individuality", author: "Ralph Emerson", quote: "To be yourself in a world that is constantly trying to make you something else is the greatest accomplishment.")
        let quote6 = Quote(category: "Inspirational", author: "George Elliot", quote: "It is never too late to be what you might have been.")
        let quote7 = Quote(category: "Simplicity", author: "Albert Einstein", quote: "If you can't explain it to a six year old, you don't understand it yourself.")
        let quote8 = Quote(category: "Reality", author: "Anais Nin", quote: "We don't see things as they are, we see them as we are")
        let quote9 = Quote(category: "Imagination", author: "Albert Einstein", quote: "Logic will get you from A to Z; imagination will get you everywhere.")
        let quote10 = Quote(category: "Inspirational", author: "Roosevelt", quote: "Do what you can, with what you have, where you are.")
        
        quotes.append(quote1)
        quotes.append(quote2)
        quotes.append(quote3)
        quotes.append(quote4)
        quotes.append(quote5)
        quotes.append(quote6)
        quotes.append(quote7)
        quotes.append(quote8)
        quotes.append(quote9)
        quotes.append(quote10)
    }
    
    func callTableViewDelegate() {
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.estimatedRowHeight = UITableViewAutomaticDimension
        tableView.rowHeight = 200.0
    }
    
    
    // Delegate & DataSource methods:
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quotes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: QUOTE_CELL_ID, for: indexPath) as? QuotesCell {
            
            let quote = quotes[indexPath.row]
            print(quote)
            cell.configureCell(quote: quote)
            return cell
        }else {
           return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let quote = quotes[indexPath.row]
        performSegue(withIdentifier: DETAILS_SEGUE, sender: quote)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == DETAILS_SEGUE {
            if let destination = segue.destination as? DetailsVC {
                destination.quoteDetails = sender as? Quote
            }
        }
        
    }


}

