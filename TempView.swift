//
//  TempView.swift
//  byExamples
//
//  Created by Nurgali Nuraly on 12/22/22.
//

import SwiftUI

struct TempView: View {
    @State private var name = "Paul"
    var body: some View {
        TextField("Shout your name at me", text: $name)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .textCase(.lowercase)
            .padding(.horizontal)
        
//        VStack {
//            Text(Date().addingTimeInterval(600), style: .date)
//            Text(Date().addingTimeInterval(600), style: .time)
//            //show the relative distance from now, automatically updating
//            Text(Date().addingTimeInterval(600), style: .relative)
//            Text(Date().addingTimeInterval(600), style: .timer)
//        }
//            .font(.largeTitle)
//            .multilineTextAlignment(.center)
//            .background(.yellow)
//            .foregroundColor(.gray)
//            .lineSpacing(50)
    }
}

struct TempView_Previews: PreviewProvider {
    static var previews: some View {
        TempView()
    }
}
