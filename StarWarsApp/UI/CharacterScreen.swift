import SwiftUI

struct CharacterScreen: View {
    @Environment(\.dismiss) private var dismiss
    @State var isFavorite: Bool = false
    var character: Character
    
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
                    Image(systemName: "star").foregroundStyle(.app).padding()
                }
                
                VStack {
                    List {
                        Section(header: Text("Informações Básicas")) {
                            DetailRow(label: "Nome", value: character.name)
                            DetailRow(label: "Altura", value: character.height)
                            DetailRow(label: "Peso", value: character.mass)
                            DetailRow(label: "Cor do Cabelo", value: character.hairColor)
                        }
                        
                        Section(header: Text("Outras Informações")) {
                            DetailRow(label: "Cor da Pele", value: character.skinColor)
                            DetailRow(label: "Cor dos Olhos", value: character.eyeColor)
                            DetailRow(label: "Ano de Nascimento", value: character.birthYear)
                            DetailRow(label: "Gênero", value: character.gender)
                            DetailRow(label: "Planeta Natal", value: character.homeworld)
                        }
                    }
                    .listStyle(InsetGroupedListStyle())
                }.padding()
            }
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
    }
}

#Preview {
    CharacterScreen(character: Character(
        name: "Luke Skywalker",
        height: "1.72m",
        mass: "73kg",
        hairColor: "Blond",
        skinColor: "Fair",
        eyeColor: "Blue",
        birthYear: "19BBY",
        gender: "Male",
        homeworld: "Tatooine"
        )
    )
}
