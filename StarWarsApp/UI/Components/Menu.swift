import SwiftUI

struct DropdownMenu: View {
    @State private var selectedOption: String = "Selecionar um personagem"
    var characterList: [String]
    
    var body: some View {
        Menu {
            ForEach(characterList, id: \.description) { character in
                Button(character, action: { selectedOption = character })
            }
        } label: {
            Label(selectedOption, systemImage: "chevron.down")
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(8)
                .foregroundColor(.app)
                .frame(maxWidth: 350)
        }
        .transition(.move(edge: .bottom))
    }
}

#Preview {
    DropdownMenu(
        characterList: ["Goku", "Vegeta", "Trunks"]
    )
}
