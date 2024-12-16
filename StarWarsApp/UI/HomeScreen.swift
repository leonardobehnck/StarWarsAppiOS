import SwiftUI

struct HomeScreen: View {
    @StateObject var viewModel = CharacterViewModel()
    @State private var selectedCharacter: Character? = nil
    
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
                        
                        if viewModel.listCharacter.isEmpty {
                            ProgressView("Carregando personagens...")
                            Spacer()
                        } else {
                            DropdownMenu(
                                characterList: viewModel.listCharacter,
                                onClick: { character in
                                    selectedCharacter = character
                                }
                            )
                            
                            if let selectedCharacter {
                                NavigationLink(
                                    destination: CharacterScreen(character: selectedCharacter),
                                    label: { EmptyView() }
                                )
                                .hidden()
                            }
                            Spacer()
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black)
                    .navigationTitle("Home").navigationBarHidden(true)
                    .onAppear {
                        selectedCharacter = nil
                        viewModel.getCharacter()
                    }
                }
            }
        }
    }
}
