import SwiftUI

struct FavoriteScreen: View {
    var body: some View {
        VStack {
            Header()
            VStack {
                Text("Favoritos")
                    .foregroundStyle(.app)
                    .font(.title)
                    .padding()
               
                Spacer()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
    }
}

#Preview {
    FavoriteScreen()
}
