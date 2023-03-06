//
//  DerislerApp.swift
//  Derisler
//
//  Created by Waris on 2022/08/12.
//

import SwiftUI

@main
struct DerislerApp: App {
    @StateObject var model = Model()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}


// UKIJ Qolyazma Tuz
// UKIJ Tuz Tom
