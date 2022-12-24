//
//  ItemDetail.swift
//  byExamples
//
//  Created by Nurgali Nuraly on 11/5/22.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem
    @EnvironmentObject var order: Order
    @EnvironmentObject var fav: Order
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -10, y: -5)
            }
            Text(item.description)
                .padding()
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
        HStack {
            Button("Order This") {
            order.add(item: item)
            }
            .padding()
            .font(.headline)
            .foregroundColor(.blue)
            .background(RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 2)
                            .background(Color.white.cornerRadius(10))
            )
            .padding()
            Button("Favorite") {
                fav.addTofav(item: item)
            }
            .padding()
            .font(.headline)
            .foregroundColor(.blue)
            .background(RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 2)
                            .background(Color.white.cornerRadius(10))
            )
            .padding()
        }
       
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem.example).environmentObject(Order())
        }
    }
}
