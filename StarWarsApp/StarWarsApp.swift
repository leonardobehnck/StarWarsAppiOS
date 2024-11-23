import SwiftUI

@main
struct StarWarsApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                HomeScreen()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }.foregroundStyle(.app)
                ContacScreen()
                    .tabItem {
                        Image(systemName: "envelope")
                        Text("Contato")
                    }.foregroundStyle(.app)
                FavoriteScreen()
                    .tabItem {
                        Image(systemName: "star")
                        Text("Favoritos")
                    }
            }.accentColor(.app)
        }
    }
}
