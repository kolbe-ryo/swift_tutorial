
import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks, id: \.getId) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
