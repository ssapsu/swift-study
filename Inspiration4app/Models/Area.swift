//
//  Area.swift
//  Inspiration4app
//
//  Created by Hyeonsu Oh on 6/14/24.
//

import Foundation

enum Area : String, Identifiable, CaseIterable, Equatable
{
    case astronauts, equipment, mission
    var id: Self { self }
    var name: String { rawValue.lowercased() }
    
    var title : String {
        switch self {
        case.astronauts:
            "Inspiration 4 mission crew members..."
        case.equipment:
            "Inspiration 4 mission equipment..."
        case.mission:
            "INspiration 4 mission trailer..."
        }
    }
}
