import SwiftUI

struct HomeScreen: View {
    var characterList: [String] = ["Luke", "Leia", "Darth Vader", "R2D2"]
    var body: some View {
        TabView {
            NavigationView {
                VStack {
                    Header()
                    VStack {
                        Text("Meu segundo App :)")
                            .foregroundStyle(.app)
                            .font(.title)
                            .padding()
                        Text("Seja bem vindo(a) ao meu segundo App. Avance para obter uma lista dos personagens de StarWars que foram consumidas de uma API. Obrigado!")
                            .padding()
                            .foregroundStyle(.app)
                        
                        DropdownMenu(characterList: characterList)
                        
                        Spacer()
                                                
                        NavigationLink (
                            destination: CharacterScreen()
                        ) {
                            PrimaryButton(text: "Ver detalhes")
                        }
                        Spacer()
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black)
                .navigationTitle("Home").navigationBarHidden(true)
            }
        }
    }
}


#Preview {
    HomeScreen()
}
