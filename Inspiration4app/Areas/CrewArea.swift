//
//  CrewArea.swift
//  Inspiration4app
//
//  Created by Hyeonsu Oh on 6/14/24.
//

import SwiftUI

struct CrewArea: View {
    var body: some View { 
        Text("랩실 4대 천황")
            .font(.system(size: 80, weight: .bold))
        HStack {
            ForEach(Crew.allCases) { crew in
                VStack(alignment: .leading){
                    Image("crew-\(crew.name)")
                        .resizable()
                        .frame(width: 180, height: 200)
                    Text(crew.fullName)
                        .font(.system(size: 22, weight: .bold))
                    Text(crew.about)
                        .font(.system(size: 20))
                }
                .frame(minWidth: 180, minHeight: 200)
                .padding(20)
                .glassBackgroundEffect()
            }
        }
    }
}

#Preview {
    CrewArea()
}
