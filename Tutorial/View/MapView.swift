//
//  SwiftUIView.swift
//  Tutorial
//
//  Created by Ryo Fukahori on 2023/10/30.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Map(coordinateRegion: $region)
    }
    
    @State private var region: MKCoordinateRegion = .init(
        center: .init(latitude: 37.331432, longitude: 122.030289),
        span: .init(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
}
