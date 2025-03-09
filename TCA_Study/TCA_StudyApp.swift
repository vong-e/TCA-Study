//
//  TCA_StudyApp.swift
//  TCA_Study
//
//  Created by vongvorovongvong on 2/20/25.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCA_StudyApp: App {
    static let store = Store(initialState: AppFeature.State()) {
        AppFeature()
    }
    
    var body: some Scene {
        WindowGroup {
            AppView(store: TCA_StudyApp.store)
        }
    }
}
