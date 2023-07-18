//
//  ContentView.swift
//  ToDoList
//
//  Created by Alex on 7/14/23.
//

import SwiftUI

struct MainVIew: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            accountView
        } else {
            LoginView()
        }
        
    }
    
    // Abstracted this block of code into a computed property called above
    @ViewBuilder
    var accountView: some View {
        //Signed In
        TabView {
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            
            ProfileView()
                .tabItem{
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainVIew()
    }
}
