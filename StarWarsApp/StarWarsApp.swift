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
                    }
                ContacScreen()
                    .tabItem {
                        Image(systemName: "envelope")
                        Text("Contacts")
                    }
            }
        }
    }
}
