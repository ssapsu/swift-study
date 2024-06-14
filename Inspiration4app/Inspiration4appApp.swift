//
//  Inspiration4appApp.swift
//  Inspiration4app
//
//  Created by Hyeonsu Oh on 6/14/24.
//

import SwiftUI

@main
struct Inspiration4appApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
