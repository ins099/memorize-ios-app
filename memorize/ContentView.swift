//
//  ContentView.swift
//  memorize
//
//  Created by Insaram Alam Siddique on 28/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView(isFaceUp: true)
            CardView()
        }
        .padding()
        .foregroundColor(.orange)
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = false
    var body: some View {
        let base = RoundedRectangle(cornerRadius: 12)
        ZStack{
            if(isFaceUp){
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text("👻").font(.largeTitle)
            } else {
                base.fill()
            }
        }.onTapGesture {
            print("Tapped")
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
