import SwiftUI

struct CharacterScreen: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        @State var name: String = ""
        @State var age: String = ""
        VStack {
            Header()
            Divider().frame(height: 1).background(.yellow)
            VStack {
                Text("Personagem")
                    .foregroundStyle(.app)
                    .font(.title)
                    .padding()
            }
    
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
    }
}

#Preview {
    CharacterScreen()
}
