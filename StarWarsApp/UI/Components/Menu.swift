import SwiftUI

struct DropdownMenu: View {
    @State private var selectedOption: String = "Selecionar um personagem"
    var characterList: [Character]
    var onClick: (Character) -> Void
    
    var body: some View {
        Menu {
            ForEach(characterList, id: \.name) { character in
                Button(character.name, action: {
                    selectedOption = character.name
                    onClick(character)
                })
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
