//
//  Inspiration4appApp.swift
//  Inspiration4app
//
//  Created by Hyeonsu Oh on 6/14/24.
//

import SwiftUI

@main
struct Inspiration4appApp: App {
    @State private var model = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            Areas()
        }
//        .defaultSize(CGSize(width:1280, height:760))
        
        WindowGroup(id: "CapsuleRealityArea"){
            CapsuleRealityArea()
                .environment(model)
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 0.6, height: 0.6, depth: 0.6, in: .meters)
        
        ImmersiveSpace(id: "FullRocketRealityArea") {
            FullRocketRealityArea()
                .environment(model)
        }
        .immersionStyle(selection: .constant(.full), in: .full)
    }
}
