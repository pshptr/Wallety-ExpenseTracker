//
//  ExpenseCD.swift
//
//

import Foundation
import CoreData

enum ExpenseCDSort: String {
    case createdAt
    case updatedAt
    case occuredOn
}

enum ExpenseCDFilterTime: String {
    case all
    case week
    case month
}
//
//public class UserCD: NSManagedObject, Identifiable {
//    @NSManaged public var username: String
//    @NSManaged public var password: String
//    // Добавьте другие свойства, если необходимо
//
//    // Метод для создания нового пользователя
//    static func createNewUser(username: String, password: String) -> UserCD? {
//        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
//            return nil
//        }
//
//        let context = appDelegate.persistentContainer.viewContext
//        guard let entity = NSEntityDescription.entity(forEntityName: "UserCD", in: context) else {
//            return nil
//        }
//
//        let newUser = UserCD(entity: entity, insertInto: context)
//        newUser.username = username
//        newUser.password = password
//        do {
//            try context.save() // Сохраняем контекст после создания пользователя
//        } catch {
//            print("Error saving user: \(error)")
//            return nil
//        }
//        return newUser
//    }
//}
public class ExpenseCD: NSManagedObject, Identifiable {
    @NSManaged public var createdAt: Date?
    @NSManaged public var updatedAt: Date?
    @NSManaged public var type: String?
    @NSManaged public var title: String?
    @NSManaged public var tag: String?
    @NSManaged public var occuredOn: Date?
    @NSManaged public var note: String?
    @NSManaged public var amount: Double
    @NSManaged public var imageAttached: Data?
}

extension ExpenseCD {
    
    static func getAllExpenseData(sortBy: ExpenseCDSort = .occuredOn, ascending: Bool = true, filterTime: ExpenseCDFilterTime = .all) -> NSFetchRequest<ExpenseCD> {
        let request: NSFetchRequest<ExpenseCD> = ExpenseCD.fetchRequest() as! NSFetchRequest<ExpenseCD>
        let sortDescriptor = NSSortDescriptor(key: sortBy.rawValue, ascending: ascending)
        if filterTime == .week {
            let startDate: NSDate = Date().getLast7Day()! as NSDate
            let endDate: NSDate = NSDate()
            let predicate = NSPredicate(format: "occuredOn >= %@ AND occuredOn <= %@", startDate, endDate)
            request.predicate = predicate
        } else if filterTime == .month {
            let startDate: NSDate = Date().getLast30Day()! as NSDate
            let endDate: NSDate = NSDate()
            let predicate = NSPredicate(format: "occuredOn >= %@ AND occuredOn <= %@", startDate, endDate)
            request.predicate = predicate
        }
        request.sortDescriptors = [sortDescriptor]
        return request
    }
}
