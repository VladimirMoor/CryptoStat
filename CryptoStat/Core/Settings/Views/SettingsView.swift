//
//  SettingsView.swift
//  CryptoStat
//
//  Created by Владимир Муравьев on 23.03.2022.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://wwww.youtube.com")!
    let coinGeckoURL = URL(string: "https://www.coingecko.com")!
    let personalURL = URL(string: "https://github.com/VladimirMoor")!
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color.theme.background.ignoresSafeArea()
                
                List {
                    creditsSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    coinGeckoSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    developerSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    applicationSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                }
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton(action: { presentationMode.wrappedValue.dismiss() })
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    
    private var creditsSection: some View {
        Section(header: Text("CryptoStat")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was made by using SwiftUI, Combine, CoreData and MVVM Architecture")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
                Link(destination: youtubeURL) {
                    Text("See more on youtube channel")
                }
                .padding(.vertical)
            }
            .padding(.vertical)
        }
    }
    
    private var coinGeckoSection: some View {
        Section(header: Text("CoinGecko")) {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data that is used in this app comes from a free API from CoinGecko! Prices may be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
                Link(destination: coinGeckoURL) {
                    Text("Visit CoinGecko 🦎")
                }
                .padding(.vertical)
            }
            .padding(.vertical)
        }
    }
    
    private var developerSection: some View {
        Section(header: Text("Developer")) {
            VStack(alignment: .leading) {
                Image("Myself")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was developed by Vladimir Moor. It uses SwiftUI and is written 100% in Swift. The project benefits from multi-threading, publishers/subscribers and dtat persistence.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
                Link(destination: personalURL) {
                    Text("Visit my GitHub 🧑🏻‍💻")
                }
                .padding(.vertical)
            }
            .padding(.vertical)
        }
    }
    
    private var applicationSection: some View {
        Section(header: Text("Application")) {
            Link(destination: defaultURL) {
                Text("Terms of service")
            }
            Link(destination: defaultURL) {
                Text("Privacy policy")
            }
            Link(destination: defaultURL) {
                Text("Company Website")
            }
            Link(destination: defaultURL) {
                Text("Leran More")
            }
            
        }
    }
    
}
