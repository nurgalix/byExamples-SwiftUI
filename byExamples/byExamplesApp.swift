//
//  byExamplesApp.swift
//  byExamples
//
//  Created by Nurgali Nuraly on 10/22/22.
//

import SwiftUI

@main
struct byExamplesApp: App {
    @StateObject var order = Order()
    @StateObject var fav = Order()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
