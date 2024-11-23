import SwiftUI

struct ContacScreen: View {
    var body: some View {        
        VStack {
            Header()
            VStack {
                Text("Contato")
                    .foregroundStyle(.app)
                    .font(.title)
                    .padding()
                Text("Entre em contato através das seguintes redes sociais.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(.app)
                    .padding()
                Card(
                    title: "E-mail",
                    link: "mailto:leonardo.behnck@gmail.com",
                    image: "envelope").padding()
                
                Card(
                    title: "LinkedIn",
                    link: "https://www.linkedin.com/in/leonardobehnck/",
                    image: "link").padding()
                
                Card(
                    title: "Github",
                    link: "https://github.com/leonardobehnck",
                    image: "macbook").padding()
                Spacer()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
    }
}

#Preview {
    ContacScreen()
}
