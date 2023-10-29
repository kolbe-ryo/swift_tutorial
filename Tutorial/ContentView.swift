//
//  ContentView.swift
//  Tutorial
//
//  Created by Ryo Fukahori on 2023/10/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, Swift")
                .font(.title2)
                .bold()
                .foregroundColor(.blue)
                .padding([.top, .leading, .trailing])
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
