//
//  Home.swift
//  okr
//
//  Created by Konstantin Singer on 07.06.20.
//  Copyright © 2020 Konstantin Singer. All rights reserved.
//

import SwiftUI

struct ProgressBar: View {
    @Binding var value: Float
    
    var body: some View {
        
        
        
        VStack {
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    Rectangle().frame(width: geometry.size.width , height: geometry.size.height)
                        .opacity(0.3)
                        .foregroundColor(Color.gray)
                    
                    Rectangle().frame(width: min(CGFloat(self.value)*geometry.size.width, geometry.size.width), height: geometry.size.height)
                        .foregroundColor(Color.green)
                        .animation(.linear)
                }.cornerRadius(45.0)
            }
        }
    }
}
struct Progress: View {
    @State var progressValue: Float = 0.0
    
    var body: some View {
        VStack {
            ProgressBar(value: $progressValue).frame(height: 20)
            
            Button(action: {
                self.startProgressBar()
            }) {
                Text("Start Progress")
            }.padding()
            
            Button(action: {
                self.resetProgressBar()
            }) {
                Text("Reset")
            }
            
            Spacer()
        }.padding()
    }
    
    func startProgressBar() {
        for _ in 0...80 {
            self.progressValue += 0.015
        }
    }
    
    func resetProgressBar() {
        self.progressValue = 0.0
    }
}



struct Progress_Previews: PreviewProvider {
    static var previews: some View {
        Progress()
    }
}
