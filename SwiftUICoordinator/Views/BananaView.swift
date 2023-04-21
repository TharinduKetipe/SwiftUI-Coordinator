//
//  BananaView.swift
//  SwiftUICoordinator
//
//  Created by Tharindu Ketipearachchi on 2023-04-21.
//

import SwiftUI

struct BananaView: View {
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        Text("B A N A N A")
        List {
            Button("Pop") {
                coordinator.pop()
            }
            Button("Pop to root") {
                coordinator.popToRoot()
            }
        }
        .navigationTitle("🍌")
    }
}

struct BananaView_Previews: PreviewProvider {
    static var previews: some View {
        BananaView()
    }
}
