//
//  CircleImage.swift
//  Tutorial
//
//  Created by Ryo Fukahori on 2023/10/31.
//

import SwiftUI

struct CircleImage: View {
    init(image: Image) {
        self.image = image
    }
    
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
            .offset(y: -130)
            .padding(.bottom, -130)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
