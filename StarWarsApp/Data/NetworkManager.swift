import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    static let baseURL = "https://swapi.dev/api/people/?format=json"
    
    init () {}
    
    func getAllCharacters(completed: @escaping (Result<CharacterModel, APError>) -> Void) {
        guard let url = URL(string: NetworkManager.baseURL) else {
            completed(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                completed(.failure(.decodingError))
                return
            }
            
            do {
                let decorator = JSONDecoder()
                let decodedResponse = try decorator.decode(CharacterModel.self, from: data)
                completed(.success(decodedResponse))
                
            } catch {
                print("Debug error: \(error.localizedDescription)")
                completed(.failure(.decodingError))
            }
            
        }
        task.resume()
    }
}

enum APError: Error {
    case unableToComplete
    case invalidURL
    case invalidResponse
    case invalidData
    case noData
    case decodingError
}
