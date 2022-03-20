//
//  DetailViewModel.swift
//  CryptoStat
//
//  Created by Владимир Муравьев on 20.03.2022.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
    private let coinDetailService: CoinDetailDataService
    private var cancelleables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        coinDetailService.$coinDetails
            .sink { returnedCoinDetails in
                print("Received detail coin data")
                print(returnedCoinDetails)
            }
            .store(in: &cancelleables)
    }
    
    
}
