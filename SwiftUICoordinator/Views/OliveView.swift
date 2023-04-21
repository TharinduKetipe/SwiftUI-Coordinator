//
//  OliveView.swift
//  SwiftUICoordinator
//
//  Created by Tharindu Ketipearachchi on 2023-04-21.
//

import SwiftUI

struct OliveView: View {
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        Text("O L I V E")
        List {
            Button("Dismiss") {
                coordinator.dismissFullScreenCover()
            }
        }
        .navigationTitle("🫒")
    }
}

struct OliveView_Previews: PreviewProvider {
    static var previews: some View {
        OliveView()
    }
}
