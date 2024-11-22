import SwiftUI

struct DropdownMenu: View {
    @State private var selectedOption: String = "Select an Option"

    var body: some View {
        Menu {
            Button("Option 1", action: { selectedOption = "Option 1" })
            Button("Option 2", action: { selectedOption = "Option 2" })
            Button("Option 3", action: { selectedOption = "Option 3" })
        } label: {
            Label(selectedOption, systemImage: "chevron.down")
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(8)
                .foregroundColor(.white)
                .frame(maxWidth: 250)
        }
        .transition(.move(edge: .bottom))
    }
}

#Preview {
    DropdownMenu()
}
