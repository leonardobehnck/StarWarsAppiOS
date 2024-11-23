import SwiftUI

struct Header: View {
    var body: some View {
        VStack{
            Image("star-wars-logo")
                .resizable()
                .scaledToFit()
            Divider().frame(height:1).background(.yellow).padding(.top, 25)
        }
        .padding()
        .background(Color.black)
    }
}

#Preview {
    Header()
}
