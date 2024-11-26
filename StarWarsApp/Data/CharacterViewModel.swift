import Foundation

class CharacterViewModel: ObservableObject {
    @Published var listCharacter: [Character] = []
    
    init () {
        getCharacter()
    }
    
    func getCharacter() {
        NetworkManager.shared.getAllCharacters { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let characterModel):
                    self.listCharacter = characterModel.results
                    print(self.listCharacter)
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
}
