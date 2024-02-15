//
//  PostService.swift
//  UIKitToDoApp
//
//  Created by N N on 15/02/2024.
//

import UIKit
import Firebase

// Go to Firebase console > Realtime Database > Create Database >
// Update region (US instead?): "connection was forcefully killed by the server.  Will not attempt reconnect. Reason: Database lives in a different region. Please change your database URL to https://uikittodoapp-f83c4-default-rtdb.europe-west1.firebasedatabase.app"

struct ToDoItem {
    var title: String
    var isComplete: Bool
//    var id: Int

//    init(keyID: String, dictionary: [String: Any]) {
//        self.title = dictionary["title"] as? String ?? ""
//        self.isComplete = dictionary["isComplete"] as? Bool ?? false
////        self.id = dictionary["id"] as? Int ?? 1
//    }

    init(title: String, isComplete: Bool) {
        self.title = title
        self.isComplete = isComplete
    }
}

struct PostService {

//    static let shared = PostService()
//    let DB_REF = Database.database().reference()
//
//    func fetchAllItems(completion: @escaping([ToDoItem]) -> Void) {
//
//        var allItems = [ToDoItem]()
//
//        DB_REF.child("items").observe(.childAdded) {
//            (snapshot) in
//            fetchSingleItem(id: snapshot.key) { (item) in
//                allItems.append(item)
//                completion(allItems)
//            }
//        }
//    }

//    func fetchSingleItem(id: String, completion: @escaping(ToDoItem) -> Void) {
//        DB_REF.child("items").child(id).observeSingleEvent(of: .value) {
//            (snapshot) in
//            guard let dictionary = snapshot.value as? [String: Any] else { return }
//            let toDoItem = ToDoItem(keyID: id, dictionary: dictionary)
//            print(toDoItem) // Test if object is being created (TODO: Firebase region to be fixed first!)
//            completion(toDoItem)
//        }
//    }
}
