//
//  FullRocketRealityArea.swift
//  Inspiration4app
//
//  Created by Hyeonsu Oh on 6/14/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct FullRocketRealityArea: View {
    var body: some View {
        RealityView { content in
            guard let entity = try? await Entity(named: "Immersive", in:
                realityKitContentBundle) else {
                fatalError("Unable to load scene model")
            }
            content.add(entity)
        }
    }
}

#Preview {
    FullRocketRealityArea()
}
