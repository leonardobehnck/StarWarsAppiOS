import SwiftUI

struct CharacterScreen: View {
    @Environment(\.dismiss) private var dismiss
    @State var isFavorite: Bool = false
    
    var body: some View {
        @State var name: String = ""
        @State var age: String = ""
        VStack {
            Header()
            VStack {
                HStack {
                    Text("Personagem")
                        .foregroundStyle(.app)
                        .font(.title)
                        .padding()
                    Spacer()
                
                    Image(systemName: "star").foregroundStyle(.app)

                }.padding()
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
