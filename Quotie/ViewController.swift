//
//  ViewController.swift
//  Quotie
//
//  Created by Stephanie on 8/17/19.
//  Copyright © 2019 Stephanie Chiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quoteTextView: UILabel!
    @IBOutlet weak var authorTextView: UILabel!
    
    var navigationBarAppearace = UINavigationBar.appearance()
    var showQuote = [Quote]()
  
    override func viewDidLoad() {
        super.viewDidLoad()

        //Change navigation bar color to white
        navigationBarAppearace.tintColor = UIColor.white
        navigationBarAppearace.barTintColor = UIColor.white
        
        getURL()
    }
    
    
    
    func getURL() {
        //Call quote JSON and parse
        let urlString = "http://quotes.rest/qod.json"
        
        if let url = URL(string: urlString){
            if let data = try? Data(contentsOf: url) {
                //parse into Codable
                parse(json: data)
                return
            }
        }
        showError()
    }
    
//Show loading error
    func showError() {
        let ac = UIAlertController(title: "Loading error", message: "There was a problem loading the feed; please check your connection and try again.", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }
    
    func parse(json: Data) {
        if let jsonDict = try? JSONSerialization.jsonObject(with: json) as? NSDictionary
        {
            print (jsonDict)
        }
    }
    
    func updateUIWithQuote() {
        //quoteTextView.text = Quotes.quote
        //authorTextView.text = showQuote.quote.stringValue
    }
}

