//
//  ContentView.swift
//  byExamples
//
//  Created by Nurgali Nuraly on 10/22/22.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    var body: some View {
        NavigationView{
            List{
                ForEach(menu) { section in
                    Section(header: Text(section.name)) {

                        ForEach(section.items) { item in
                            NavigationLink(destination: ItemDetail(item: item)) {
                                ItemRow(item: item)
                            }
                        }   
                    }
                }
            }
            .navigationBarTitle("Menu")
            .listStyle((GroupedListStyle()))
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
