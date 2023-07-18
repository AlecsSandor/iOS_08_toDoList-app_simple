//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Alex on 7/14/23.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainVIew()
        }
    }
}
