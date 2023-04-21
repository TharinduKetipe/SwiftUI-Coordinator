//
//  AppleView.swift
//  SwiftUICoordinator
//
//  Created by Tharindu Ketipearachchi on 2023-04-21.
//

import SwiftUI

struct AppleView: View {
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        Text("A P P L E")
        List {
            Button("Push 🍑") {
                coordinator.push(.peach)
            }
            Button("Present  🍊") {
                coordinator.present(sheet: .orange)
            }
            Button("Present  🫒") {
                coordinator.present(fullScreenCover: .olive)
            }
        }
        .navigationTitle("🍎")
    }
}

struct AppleView_Previews: PreviewProvider {
    static var previews: some View {
        AppleView()
    }
}
