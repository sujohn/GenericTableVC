//
//  Models.swift
//  GenericTableVC
//
//  Created by Md. Shaiful Islam on 12/7/18.
//  Copyright © 2018 Md. Shaiful Islam Sujohn. All rights reserved.
//

import Foundation

struct Book {
    let title: String
    let author: String
    
    static var books: [Book] {
        return [
            Book(title: "Abc", author: "A"),
            Book(title: "Def", author: "D"),
            Book(title: "Ghi", author: "G")
        ]
        
    }
}

struct Trade {
    let buyOrSell: String
    let amount: String
    let currency: String
    let message: String
    
    static var trades: [Trade] {
        return [
            Trade(buyOrSell: "Buy", amount: "0.1", currency: "BTC", message: "Send 0.1 BTC"),
            Trade(buyOrSell: "Sell", amount: "0.11", currency: "ETH", message: "Buy 0.11 ETH"),
            Trade(buyOrSell: "Buy", amount: "0.01", currency: "BTC", message: "Send 0.01 BTC")
        ]
    }
}
