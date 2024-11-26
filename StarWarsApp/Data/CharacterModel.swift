struct CharacterModel: Codable, Hashable {
    let count: Int
    let next: String?
    let previous: String?
    let results: [Character]
}
