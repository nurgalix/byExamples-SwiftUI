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
    
    func addition(a: Int, b: Int) -> Int {
        return a + b
    }
    
    func genericAddition<T: Numeric>(a: T, b: T) -> T {
        return a + b
    }
    
    func test() {
        genericAddition(a: 5, b: 5)
        genericAddition(a: 5.5, b: 5.5)
        
        [1, 2, 3].map { $0 * 2 } // [2, 4, 6]
        [1, 2, 3].sorted { lhs, rhs in
            return lhs < rhs
        }
    }
}
