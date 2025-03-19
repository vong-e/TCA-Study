//
//  ContactsFeatureTests.swift
//  TCA_StudyTests
//
//  Created by vongvorovongvong on 3/19/25.
//

import ComposableArchitecture
import Foundation
import Testing

@testable import TCA_Study

@MainActor
struct ContactsFeatureTests {
    @Test
    func addFlow() async {
        let store = TestStore(initialState: ContactsFeature.State()) {
            ContactsFeature()
        } withDependencies: {
            $0.uuid = .incrementing
        }
        
        await store.send(.addButtonTapped) {
            $0.destination = .addContact(
                AddContactFeature.State(
                    contact: Contact(id: UUID(0), name: "")
                )
            )
        }
        
        await store.send(\.destination.addContact.setName, "SuperMan") {
            $0.destination?.modify(\.addContact) { $0.contact.name = "SuperMan"}
        }
        await store.send(\.destination.addContact.saveButtonTapped)
        await store.receive(
            \.destination.addContact.delegate.saveContact,
             Contact(id: UUID(0), name: "SuperMan")
        ) {
            $0.contacts = [
                Contact(id: UUID(0), name: "SuperMan")
            ]
        }
        await store.receive(\.destination.dismiss) {
            $0.destination = nil
        }
    }
}
