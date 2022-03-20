//
//  HapticManager.swift
//  CryptoStat
//
//  Created by Владимир Муравьев on 19.03.2022.
//

import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
    
}
