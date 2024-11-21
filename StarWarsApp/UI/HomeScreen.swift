import SwiftUI

struct HomeScreen: View {
    var body: some View {
        @State var name: String = ""
        @State var age: String = ""
        
        VStack {
            NavigationView {
                Header()
                Divider().frame(height:1).background(.yellow)
                VStack {
                    Text("Meu segundo App :)")
                        .foregroundStyle(.app)
                        .font(.title)
                        .padding()
                    Text("Seja bem vindo(a) ao meu segundo App. Avance para obter uma lista dos personagens de StarWars que foram consumidas de uma API. Obrigado!")
                        .padding()
                        .foregroundStyle(.yellow)
                }
                
                Spacer()
                PrimaryButton(
                    text: "Selecionar personagem"
                ){
                    NavigationLink(destination: CharacterScreen()) {
                        Text("Selecionar personagem")
                    }
                }
            }.padding(50)
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
    }
}



#Preview {
    HomeScreen()
}
