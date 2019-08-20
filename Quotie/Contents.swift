//
//  Contents.swift
//  Quotie
//
//  Created by Stephanie on 8/19/19.
//  Copyright © 2019 Stephanie Chiu. All rights reserved.
//

import Foundation

struct Contents: Codable {
    struct Quotes: Codable {
        struct Quote: Codable {
            var author: String
            var quote: String
        }
        var quotes: [Quote]
    }
    var contents: [Quotes]
}
