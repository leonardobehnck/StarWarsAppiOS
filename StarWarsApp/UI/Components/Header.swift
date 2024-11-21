import SwiftUI

struct Header: View {
    var body: some View {
        VStack{
            Image("star-wars-logo")
                .resizable()
                .scaledToFit()
        }
        .padding()
        .background(Color.black)
    }
}

#Preview {
    Header()
}
