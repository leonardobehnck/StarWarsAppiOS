import SwiftUI

struct HomeScreen: View {
    var body: some View {
        TabView {
            NavigationView {
                VStack {
                    Header()
                    Divider().frame(height:1).background(.yellow)
                    VStack {
                        Text("Meu segundo App :)")
                            .foregroundStyle(.app)
                            .font(.title)
                            .padding()
                        Text("Seja bem vindo(a) ao meu segundo App. Avance para obter uma lista dos personagens de StarWars que foram consumidas de uma API. Obrigado!")
                            .padding()
                            .foregroundStyle(.app)
                        
                        Spacer()
                                                
                        NavigationLink (
                            destination: CharacterScreen()
                        ) {
                            PrimaryButton(text: "Selecionar personagem")
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
