//
//  ContentView.swift
//  Delivery App SwiftUI
//
//  Created by Urmat on 5/1/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var search: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HomeNavBarView()
            
            Text("Hello, friend")
                .font(.caption)
                .fontWeight(.medium)
                .foregroundColor(.gray)
            
            Text("Do ya'll wanna cook it up?")
                .font(.title)
                .fontWeight(.bold)
            
            SearchBar(search: $search)
            
            Spacer()
        }.padding()
            
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeNavBarView: View {
    var body: some View {
        HStack {
            Image("menu")
                .onTapGesture {
                    
                }
            
            Spacer()
            
            Image("notifications")
                .onTapGesture {
                    
                }
        }
    }
}

struct SearchBar: View {
    @Binding var search: String
    
    var body: some View {
        HStack(spacing: 16) {
            HStack {
                Image("search")
                TextField("Search for Recipes", text: $search)
            }.padding()
                .background(Color(UIColor.lightGray))
                .cornerRadius(8.0)
            
            Image("filter")
                .padding()
                .background(Color(UIColor.lightGray))
                .cornerRadius(8.0)
                .onTapGesture {
                    
                }
        }
    }
}
