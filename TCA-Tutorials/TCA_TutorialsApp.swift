//
//  TCA_TutorialsApp.swift
//  TCA-Tutorials
//
//  Created by 上條栞汰 on 2023/06/02.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCA_TutorialsApp: App {
    static let store = Store(initialState: CounterFeature.State()) {
        CounterFeature()
            ._printChanges()
    }
    
    var body: some Scene {
        WindowGroup {
            CounterView(store: TCA_TutorialsApp.store)
        }
    }
}
