
import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    var body: some View {
        PageViewController(pages: pages)
    }
}

#Preview {
    PageView(
        pages: ModelData().features.map { landmark in
            FeatureCard(landmark: landmark)
                .aspectRatio(3/2, contentMode: .fit)
        }
    )
}
