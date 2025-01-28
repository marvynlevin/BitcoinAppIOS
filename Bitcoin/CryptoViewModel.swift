//
//  CryptoViewModel.swift
//  Bitcoin
//
//  Created by levin marvyn on 28/01/2025.
//

import Foundation

class CryptoViewModel: ObservableObject {
    
    @Published var cryptos: [Crypto] = []
    
    init() {
        getCryptos()
    }
    
    func getCryptos() {
        let newCryptos: [Crypto] = [
            Crypto(nameOfCrypto: "BIT", imageName: "bitcoin", price: 52),
            Crypto(nameOfCrypto: "ETH", imageName: "ethereum", price: 21),
            Crypto(nameOfCrypto: "XRP", imageName: "ripple", price: 6),
            Crypto(nameOfCrypto: "XLM", imageName: "stellar", price: 11)
        ]
        self.cryptos += newCryptos
    }
    
    func convertDollardToEuro() {
        for i in 0..<cryptos.count {
            cryptos[i].price += 1;
        }
    }
}
