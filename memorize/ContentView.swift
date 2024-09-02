//
//  ContentView.swift
//  memorize
//
//  Created by Insaram Alam Siddique on 28/08/2024.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻","🕷️","🎃","🏠","🏠"]
    var body: some View {
        HStack {
//            ForEach(0..<4,id:\.self){ index in
//                CardView(content: emojis[index])
//            }
            ForEach(emojis.indices,id:\.self){ index in
                CardView(content: emojis[index])
            }
        }
        .padding()
        .foregroundColor(.orange)
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = false
    var content: String
    var body: some View {
        let base = RoundedRectangle(cornerRadius: 12)
        ZStack{
            if(isFaceUp){
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            } else {
                base.fill()
            }
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
