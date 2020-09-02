//
//  home.swift
//  okr
//
//  Created by Konstantin Singer on 07.06.20.
//  Copyright © 2020 Konstantin Singer. All rights reserved.
//

import SwiftUI

struct Home: View {
    @State var showUpdate = false
    @State private var progress = 0
    @State private var currentProgress = 0
    @State private var ProgressPercent = 0
 
    
    var body: some View {
        VStack {
         
            HStack {
               
                Text("My OKRs")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                    .padding()
                Spacer()
                  Button(action: {self.showUpdate.toggle() }) {
                    Image(systemName: "plus")
                        .renderingMode(.original)
                        .font(.system(size: 16, weight: .medium))
                        .frame(width: 40, height: 40)
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(color: Color.black.opacity(0.1), radius: 1, x: 0, y: 1)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 10)
                    }
                    .padding()
                    .sheet(isPresented: $showUpdate) {
                        ContentView(showUpdate: self.$showUpdate)
      
                }
       
                
            }
            .padding(.top, 35.0)
           
               Spacer()
            
              // first OKR starts here
            ScrollView (showsIndicators: false){
                            
                       
                        VStack {
                              
                            Overview(metricdescription: "Minutes", objectivename: "Get healthy and feel better", keyresultname: "🧘‍♂️ Meditate 500 minutes")
                            Overview(metricdescription: "Euro", objectivename: "Financial Freedom", keyresultname: "📈 Invest 50k € in Stocks")
                             }
            }
                
        .background(Color(.secondarySystemBackground))
      
 
            
            
        }
        .padding(.top)
        .background(Color(.secondarySystemBackground))
        .edgesIgnoringSafeArea(.all)
        
      // Objective finishes here
       
    }
}



struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
