import SwiftUI

struct CharacterScreen: View {
    var body: some View {
        @State var name: String = ""
        @State var age: String = ""
        NavigationView {
            VStack {
                Header()
                Divider().frame(height: 1).background(.yellow)
                VStack {}
                Spacer()
                PrimaryButton(text: "Voltar") {
                    NavigationLink("", destination: HomeScreen())
                }
                .padding(25)
                Spacer()
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black)
        }
    }
}


#Preview {
    CharacterScreen()
}
