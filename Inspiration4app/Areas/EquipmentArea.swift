//
//  EquipmentArea.swift
//  Inspiration4app
//
//  Created by Hyeonsu Oh on 6/14/24.
//

import SwiftUI

struct EquipmentArea: View {
    @Environment(ViewModel.self) private var model
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow
    
    @Environment(\.openImmersiveSpace) private var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) private var dismissImmersiveSpace
    var body: some View {
        @Bindable var model = model
        
        HStack {
            VStack {
                Image("equipment-capsule")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .padding(20)
                Toggle(model.isShowingRocketCapsule ? "Hide Rocket Capsule (Volumetric)" : "Show Rocket Capsule (Volumetric)", isOn: $model.isShowingRocketCapsule)
                    .onChange(of: model.isShowingRocketCapsule) { _, isShowing in
                        if isShowing {
                            //openWindow volumetric
                        }
                        else
                        {
                            //dismissWindow volumetric
                        }
                    }
                    .toggleStyle(.button)
                    .padding(25)
                
            }
            .glassBackgroundEffect()
            VStack {
                Image("equipment-fullrocket")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .padding(20)
                Toggle(model.isShowingFullRocket ? "Hide Full Rocket (Immersed)" : "Show Full Rocket (Volumetric)", isOn: $model.isShowingFullRocket)
                    .onChange(of: model.isShowingFullRocket) { _, isShowing in
                        if isShowing {
                            //openWindow volumetric
                        }
                        else
                        {
                            //dismissWindow volumetric
                        }
                    }
                    .toggleStyle(.button)
                    .padding(25)
            }
            .glassBackgroundEffect()
        }
    }
}

#Preview {
    EquipmentArea()
        .environment(ViewModel())
}
