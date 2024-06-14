//
//  ViewModel.swift
//  Inspiration4app
//
//  Created by Hyeonsu Oh on 6/14/24.
//

import Foundation

@Observable
class ViewModel {
    var navigationPath: [Area] = []
    var isShowingRocketCapsule: Bool = false
    var isShowingFullRocket: Bool = false
}
