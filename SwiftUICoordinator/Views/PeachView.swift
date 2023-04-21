//
//  PeachView.swift
//  SwiftUICoordinator
//
//  Created by Tharindu Ketipearachchi on 2023-04-21.
//

import SwiftUI

struct PeachView: View {
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        Text("P E A C H")
        List {
            Button("Push 🍌") {
                coordinator.push(.banana)
            }
            Button("Pop") {
                coordinator.pop()
            }
        }
        .navigationTitle("🍑")
    }
}

struct PeachView_Previews: PreviewProvider {
    static var previews: some View {
        PeachView()
    }
}
