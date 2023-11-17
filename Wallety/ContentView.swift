import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            ManageCardsScreen()
                .tabItem {
                    Label("Manage Cards", systemImage: "creditcard")
                }

            // Добавьте другие экраны, соответствующие пунктам плана
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
