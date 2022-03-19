//
//  XMarkButton.swift
//  CryptoStat
//
//  Created by Владимир Муравьев on 18.03.2022.
//

import SwiftUI

struct XMarkButton: View {
    
    let action: () -> ()
    
    init(action: @escaping () -> ()) {
        self.action = action
    }
    
    var body: some View {
        Button(action: { action() },
               label: { Image(systemName: "xmark")
                .font(.headline)
        })
    }
}

struct XMarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton(action: { print("hello") })
    }
}
