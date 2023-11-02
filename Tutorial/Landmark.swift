import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    private var id: Int
    private var name: String
    private var park: String
    private var state: String
    private var description: String
    
    private var imageName: String
    
    private var coordinates: Coordinates
    
    var image: Image {
        Image(imageName)
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
