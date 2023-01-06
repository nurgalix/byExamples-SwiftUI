//
//  MainView.swift
//  byExamples
//
//  Created by Nurgali Nuraly on 11/10/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                        // .labelStyle(TitleAndIconLabelStyle())
                }
            
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
            FavoriteView()
                .tabItem {
                    Label("Favorites", systemImage: "star.fill")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(Order())
    }
}
