import Foundation
import CoreData

class Card: NSManagedObject, Identifiable {
    @NSManaged var id: UUID?
    @NSManaged var name: String
    @NSManaged var balance: Double
    
    // Добавьте другие свойства, если необходимо
    
    convenience init(name: String, balance: Double) {
        self.init()
        self.id = UUID()
        self.name = name
        self.balance = balance
    }
}

extension Card {
    static func getAllCards() -> NSFetchRequest<Card> {
        let request: NSFetchRequest<Card> = Card.fetchRequest() as! NSFetchRequest<Card>
        let sortDescriptor = NSSortDescriptor(key: "name", ascending: true)
        request.sortDescriptors = [sortDescriptor]
        return request
    }
}
