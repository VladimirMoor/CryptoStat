//
//  UIApplication.swift
//  CryptoStat
//
//  Created by Владимир Муравьев on 16.03.2022.
//

import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}

