//
//  OrangeView.swift
//  SwiftUICoordinator
//
//  Created by Tharindu Ketipearachchi on 2023-04-21.
//

import SwiftUI

struct OrangeView: View {
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        Text("O R R A N G E")
        List {
            Button("Dismiss") {
                coordinator.dismissSheet()
            }
        }
        .navigationTitle("🍊")
    }
}

struct OrangeView_Previews: PreviewProvider {
    static var previews: some View {
        OrangeView()
    }
}
