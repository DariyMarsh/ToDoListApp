//
//  ToDoListViewViewModel.swift
//  tasks
//
//  Created by Ruslan Marshaev on 9/12/24.
//viewmodel for list of items view
// primary tab
import Foundation
import FirebaseFirestore

class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    private let userId: String
    init(userId: String) {
        self.userId = userId
    }
    
    /// Delete to do List item
    /// - Parameter id: Item id to delete
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
