import SwiftUI

struct Card: View {
    var title: String = "Email"
    var link: String = "https://www.linkedin.com/in/leonardo-behnck/"
    var image: String = "mail"
    
    var body: some View {
        Link(destination: URL(string: link)!){
            HStack{
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 20)
                    .foregroundStyle(.app)
                Spacer()
                Text(title)
                    .foregroundStyle(.app)
            }
            .padding()
            .frame(maxWidth:250)
            .background(
                RoundedRectangle(cornerRadius: 10).fill(.white.opacity(0.2))
            )
        }
    }
}

#Preview {
    Card()
}
