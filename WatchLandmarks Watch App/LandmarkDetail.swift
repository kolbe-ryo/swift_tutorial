
import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { elem in
            elem.id == landmark.id
        })!
    }
    
    var body: some View {
        CircleImage(image: landmark.image.resizable())
            .scaledToFill()
    }
}

#Preview {
    let modelData = ModelData()
    
    return LandmarkDetail(
        landmark: modelData.landmarks[1]
    ).environment(modelData)
}
