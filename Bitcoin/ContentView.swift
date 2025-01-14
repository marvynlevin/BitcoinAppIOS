//
//  ContentView.swift
//  Bitcoin
//
//  Created by levin marvyn on 14/01/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            Color.black
                .edgesIgnoringSafeArea(.all)
                        
            VStack {
                HStack {
                    Text("Crypto App")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.green)
                                    
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                }
                
                HStack {
                    Text("Monday September 13, 2021")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundStyle(.green)
                        .padding(.bottom, 40)
                    
                    Image(systemName: "calendar.circle.fill")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                }


                HStack (spacing: 20) {
                    BitcoinVisualizeData(
                        nameOfCrypto: "BIT",
                        imageName: "bitcoin",
                        temperature: 52
                    )
                    BitcoinVisualizeData(
                        nameOfCrypto: "ETH",
                        imageName: "ethereum",
                        temperature: 21
                    )
                    BitcoinVisualizeData(
                        nameOfCrypto: "XRP",
                        imageName: "ripple",
                        temperature: 6
                    )
                    BitcoinVisualizeData(
                        nameOfCrypto: "XLM",
                        imageName: "stellar",
                        temperature: 11
                    )
                }
                
                Spacer()
                
                Button {
                    //action à réaliser
                    print("button tapped")
                } label: {
                    Text("Changed Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
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
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.title2)
                .foregroundStyle(.white)
            
            Image(imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
            
            Text("$ \(temperature)k")
                .font(.title2)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    ContentView()
}
