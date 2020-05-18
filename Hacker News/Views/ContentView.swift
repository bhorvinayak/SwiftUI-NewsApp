//
//  ContentView.swift
//  Hacker News
//
//  Created by Vinayak Bhor on 14/05/20.
//  Copyright © 2020 Vinayak Bhor. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView {
            
            List(networkManager.post) { post in
                Text(post.title)
            }.navigationBarTitle("Hacker News")


        }.onAppear {
            self.networkManager.fetchData()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct Post : Identifiable{
//    let id:String
//    let title:String
//}
//
//let posts = [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Hola"),
//    Post(id: "3", title: "Bonjour")
//]
