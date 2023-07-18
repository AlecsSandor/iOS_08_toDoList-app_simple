//
//  User.swift
//  ToDoList
//
//  Created by Alex on 7/14/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
