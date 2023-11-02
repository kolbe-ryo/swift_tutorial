import Foundation
import SwiftUI

struct Landmark: Hashable, Codable {
    private var id: Int
    private var name: String
    private var park: String
    private var state: String
    private var description: String
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
}
