import SwiftUI

struct FavoriteScreen: View {
    @State private var names: [String] = ["Elisha", "Andre", "Jasmine", "Po-Chun"]
    @State private var nameToAdd = ""
    
    var body: some View {
        VStack {
            Header()
            Divider().frame(height:1).background(.yellow)
            VStack {
                Text("Meu segundo App :)")
                    .foregroundStyle(.app)
                    .font(.title)
                    .padding()
                
                List {
                    ForEach(names, id: \.description) { name in
                        Text(name)
                    }
                }.foregroundStyle(.black)
                
                TextField(
                    "Add Name",
                    text: $nameToAdd)
                .onSubmit {
                    names.append(nameToAdd)
                    nameToAdd = ""
                }.foregroundStyle(.black).padding()
            }
        }
    }
}

#Preview {
    FavoriteScreen()
}
