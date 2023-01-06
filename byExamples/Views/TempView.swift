//
//  TempView.swift
//  byExamples
//
//  Created by Nurgali Nuraly on 12/22/22.
//

import SwiftUI

struct TempView: View {
    @State private var compl: CGFloat = 0.0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        Rectangle()
            .trim(from: 0, to: compl)
            .stroke(Color.red, lineWidth: 20)
            .frame(width: 200, height: 200)
            .rotationEffect(.degrees(-90))
            .onReceive(timer) { _ in
                withAnimation {
                    guard compl < 1 else {return}
                    compl += 0.2
                }
            }
            .background(
                Color.red)
//    @State private var name = "Paul"
//    var body: some View {
//        Circle()
//            .trim(from: 0, to: 0.5)
//            .frame(width: 200, height: 200)
//        ZStack {
//            Circle()
//                .fill(Color.blue)
//
//            Circle()
//                .strokeBorder(Color.black, lineWidth: 20)
//        }
//        Text("Hacking with Swift")
//            .font(.largeTitle)
//            .background(Circle()
//                            .fill(Color.red)
//                            .frame(width: 200, height: 200))
//            .clipped()
            
        // putting image behind Text
//        Text("Hacking with Swift")
//            .font(.largeTitle)
//            .background(
//                Image(systemName: "cloud")
//                    .resizable()
//                    .frame(width: 100, height: 100)
//            )
        
        
        // gradient
//        Text("Hello World")
//            .padding()
//            .foregroundColor(.white)
//            .background(LinearGradient(gradient: Gradient(colors: [.white, .red, .black]), startPoint: .top, endPoint: .bottom))
        // SF Images
//        Image(systemName: "cloud.heavyrain.fill")
//            .renderingMode(.original)
//            .foregroundColor(.red)
//            .font(.largeTitle)
//            .padding()
//            .background(Color.black)
//            .clipShape(Circle())
        
        
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
