//
//  String.swift
//  CryptoStat
//
//  Created by Владимир Муравьев on 23.03.2022.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
