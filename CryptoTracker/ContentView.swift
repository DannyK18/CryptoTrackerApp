//
//  ContentView.swift
//  CryptoTracker
//
//  Created by Daniel on 27.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                Text("Accent color")
                    .foregroundColor(Color.theme.accent)
                
                Text("secondary color")
                    .foregroundColor(Color.theme.secondaryText)
                
                
                Text("red color")
                    .foregroundColor(Color.theme.red)
                
                
                Text("green color")
                    .foregroundColor(Color.theme.green)
                
            }
            .font(.headline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
