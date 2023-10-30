//
//  ContentView.swift
//  Tutorial
//
//  Created by Ryo Fukahori on 2023/10/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, Swift")
                .font(.title2)
                .bold()
                .foregroundColor(.blue)
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
