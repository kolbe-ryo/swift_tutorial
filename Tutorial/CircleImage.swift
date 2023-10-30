//
//  CircleImage.swift
//  Tutorial
//
//  Created by Ryo Fukahori on 2023/10/31.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("IMG_0876")
            .resizable()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
            .offset(y: -130)
            .padding(.bottom, -130)
    }
}
