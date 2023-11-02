import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            CircleImage()
            VStack(alignment: .leading) {
                Text("Hello, Swift")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.blue)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            .background(Color.white)
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
