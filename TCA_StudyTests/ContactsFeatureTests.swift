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

//@MainActor
//struct ContactsFeatureTests {
//    @Test
//    func addFlow() async {
//        let store = TestStore(initialState: ContactsFeature.State()) {
//            ContactsFeature()
//        } withDependencies: {
//            $0.uuid = .incrementing
//        }
//        
//        await store.send(.addButtonTapped) {
//            $0.destination = .addContact(
//                AddContactFeature.State(
//                    contact: Contact(id: UUID(0), name: "")
//                )
//            )
//        }
//        
//        await store.send(\.destination.addContact.setName, "SuperMan") {
//            $0.destination?.modify(\.addContact) { $0.contact.name = "SuperMan"}
//        }
//        await store.send(\.destination.addContact.saveButtonTapped)
//        await store.receive(
//            \.destination.addContact.delegate.saveContact,
//             Contact(id: UUID(0), name: "SuperMan")
//        ) {
//            $0.contacts = [
//                Contact(id: UUID(0), name: "SuperMan")
//            ]
//        }
//        await store.receive(\.destination.dismiss) {
//            $0.destination = nil
//        }
//    }
//}


//@MainActor
//struct ContactsFeatureTests {
//    @Test
//    func addFlowNonExhaustive() async {
//        let store = TestStore(initialState: ContactsFeature.State()) {
//            ContactsFeature()
//        } withDependencies: {
//            $0.uuid = .incrementing
//        }
//        store.exhaustivity = .off
//        
//        await store.send(.addButtonTapped)
//        await store.send(\.destination.addContact.setName, "Blob Jr.")
//        await store.send(\.destination.addContact.saveButtonTapped)
//        await store.skipReceivedActions()
//        store.assert {
//            $0.contacts = [
//                Contact(id: UUID(0), name: "Blob Jr.")
//            ]
//            $0.destination = nil
//        }
//    }
//}


//@MainActor
//struct ContactsFeatureTests {
//    @Test
//    func deleteContact() async {
//        let store = TestStore(
//            initialState: ContactsFeature.State(
//                contacts: [
//                    Contact(id: UUID(0), name: "Blob"),
//                    Contact(id: UUID(1), name: "Blob Jr."),
//                ]
//            )
//        ) {
//            ContactsFeature()
//        }
//        
//        await store.send(.deleteButtonTapped(id: UUID(1))) {
////            $0.destination = .alert(.deleteConfirmation(id: UUID(1)))
//            $0.destination = .alert(.deleteconfirm)
//        }
//        await store.send(\.destination.alert.confirmDeletion, UUID(1)) {
//            $0.contacts = [
//                Contact(id: UUID(0), name: "Blob")
//            ]
//            $0.destination = nil
//        }
//    }
//}
