import SwiftUI
import CoreData

struct ManageCardsScreen: View {
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(sortDescriptors: [NSSortDescriptor(key: "name", ascending: true)]) private var cards: FetchedResults<Card>

    var body: some View {
        NavigationView {
            List {
                ForEach(cards) { card in
                    Text(card.name)
                    // Добавьте код для отображения и управления картами
                }
            }
            .navigationTitle("Manage Cards")
        }
    }
}

struct ManageCardsScreen_Previews: PreviewProvider {
    static var previews: some View {
        ManageCardsScreen()
    }
}
