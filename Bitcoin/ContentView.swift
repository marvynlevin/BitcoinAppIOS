//
//  ContentView.swift
//  Bitcoin
//
//  Created by levin marvyn on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var isEuro: Bool = false
    
    @EnvironmentObject var cryptosVM: CryptoViewModel

    var body: some View {
        
        ZStack {
            
            Color.black
                .edgesIgnoringSafeArea(.all)
                        
            VStack {
                
                HStack {
                    Text("Crypto App")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.mint)
                               
                    Button {
                        cryptosVM.convertDollardToEuro()
                    } label: {
                        Image(systemName: "arrow.clockwise.circle")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(.mint)
                    }
                    
                }
                
                .padding(.bottom, 40)
                
                HStack {
                    Image(systemName: "calendar.circle.fill")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.mint)
                    
                    Text("Monday September 13, 2021")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundStyle(.white)
                }

                Spacer()

                HStack (spacing: 20) {
                    BitcoinVisualizeData(crypto: cryptosVM.cryptos[0])
                    BitcoinVisualizeData(crypto: cryptosVM.cryptos[1])
                    BitcoinVisualizeData(crypto: cryptosVM.cryptos[2])
                    BitcoinVisualizeData(crypto: cryptosVM.cryptos[3])
                }
                
                Spacer()
                
                Button {
                    isEuro.toggle()
                } label: {
                    Text("Convert to €")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .foregroundStyle(.black)
                        .font(.title2)
                        .bold()
                        .cornerRadius(12)
                }
                
                Spacer()
            }
        }
    }
}

// switfUI utilise plus des struct que les class
struct BitcoinVisualizeData: View {
    
    var crypto: Crypto
    
    var body: some View {
        VStack {
            Text(crypto.nameOfCrypto)
                .font(.title2)
                .foregroundStyle(.white)
            
            Image(crypto.imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
            
            let priceChange = "$ \(crypto.price)k"
            
            Text(priceChange)
                .font(.title2)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(CryptoViewModel())
}
