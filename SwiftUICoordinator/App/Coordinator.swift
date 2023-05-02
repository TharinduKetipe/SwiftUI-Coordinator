//
//  Coordinator.swift
//  SwiftUICoordinator
//
//  Created by Tharindu Ketipearachchi on 2023-04-21.
//

import SwiftUI

enum Page: String, Identifiable {
    case apple, peach, banana
    
    var id: String {
        self.rawValue
    }
}

enum Sheet: String, Identifiable {
    case orange
    
    var id: String {
        self.rawValue
    }
}

enum FullScreenCover: String, Identifiable {
    case olive
    
    var id: String {
        self.rawValue
    }
}

@MainActor
class Coordinator: ObservableObject {
    @Published var path = NavigationPath()
    @Published var sheet: Sheet?
    @Published var fullScreenCover: FullScreenCover?
    
    func push(_ page: Page) {
        path.append(page)
    }
    
    func present(sheet: Sheet) {
        self.sheet = sheet
    }
    
    func present(fullScreenCover: FullScreenCover) {
        self.fullScreenCover = fullScreenCover
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func dismissSheet() {
        self.sheet = nil
    }
    
    func dismissFullScreenCover() {
        self.fullScreenCover = nil
    }
    
    @ViewBuilder
    func build(page: Page) -> some View {
        switch page {
        case .apple:
            AppleView()
        case .peach:
            PeachView()
        case .banana:
            BananaView()
        }
    }
    
    @ViewBuilder
    func build(sheet: Sheet) -> some View {
        switch sheet {
        case .orange:
            NavigationStack {
                OrangeView()
            }
        }
    }
    
    @ViewBuilder
    func build(fullScreenCover: FullScreenCover) -> some View {
        switch fullScreenCover {
        case .olive:
            NavigationStack {
                OliveView()
            }
        }
    }
}
