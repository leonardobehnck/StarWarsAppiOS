import SwiftUI

struct PrimaryButton: View {
    var text: String
    var body: some View {
        Text(text)
            .frame(height: 25)
            .padding()
            .foregroundColor(.black)
            .background(.app)
    }
}

#Preview {
    PrimaryButton(
        text: "Button"
    )
}
