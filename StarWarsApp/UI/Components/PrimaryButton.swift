import SwiftUI

struct PrimaryButton: View {
    @State var text = "Button"
    var onClick: () -> Void
    
    var body: some View {
        VStack{
            Button(action: {onClick()}) {
                Text(text)
                    .frame(height: 20)
                    .font(.headline)
                    .foregroundColor(.black)
            }
        }
        .padding()
        .background{
            RoundedRectangle(cornerRadius: 10)
                .fill(.app)
        }
    }
}

#Preview {
    PrimaryButton(
        text: "Button"
    ) {}
}
