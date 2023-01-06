//
//  FavoriteView.swift
//  byExamples
//
//  Created by Nurgali Nuraly on 12/21/22.
//

import SwiftUI

struct FavoriteView: View {
    @EnvironmentObject var fav: Order
    @State var temp = [String]()
    var body: some View {
        NavigationView {
            List {
                ForEach(fav.favs) { i in
                    Text(i.name)
                }
                
            }
            .navigationTitle("Favorites")
            .listStyle(InsetGroupedListStyle())
            .toolbar {
                EditButton()
            }
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
