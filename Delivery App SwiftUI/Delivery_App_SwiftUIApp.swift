//
//  Delivery_App_SwiftUIApp.swift
//  Delivery App SwiftUI
//
//  Created by Urmat on 5/1/22.
//

import SwiftUI

@main
struct Delivery_App_SwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
