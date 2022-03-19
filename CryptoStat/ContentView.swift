//
//  ContentView.swift
//  CryptoStat
//
//  Created by Владимир Муравьев on 11.03.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack {
                Text("Accent color")
                    .foregroundColor(Color.theme.accent)
                Text("Secondary text color")
                    .foregroundColor(Color.theme.secondaryText)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
