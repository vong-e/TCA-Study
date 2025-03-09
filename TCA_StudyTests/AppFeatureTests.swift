//
//  AppFeatureTests.swift
//  TCA_StudyTests
//
//  Created by vongvorovongvong on 3/9/25.
//

import ComposableArchitecture
import Testing

@testable import TCA_Study

@MainActor
struct AppFeatureTests {
    @Test
    func incrementInFirstTab() async {
        let store = TestStore(initialState: AppFeature.State()) {
            AppFeature()
        }
        
        await store.send(\.tab1.incrementButtonTapped) {
            $0.tab1.count = 1
        }
    }
}
