//
//  Overview.swift
//  okr
//
//  Created by Konstantin Singer on 16.06.20.
//  Copyright © 2020 Konstantin Singer. All rights reserved.
//

import SwiftUI

struct Overview: View {
 
    
    
    @State private var progress = 0
    @State private var currentProgress = 0
    @State private var ProgressPercent = 0
    
    var metricdescription: String
    var objectivename: String
    var keyresultname: String
    
    
    var body: some View {
        VStack {
       
            VStack {
                  Divider()
                HStack {
                    
                    Text(objectivename)
                        .font(.headline)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding()
                    Spacer()
                    Text("\(ProgressPercent) %")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .frame(width: 70.0, height: 25.0)
                        
                        .background(Color(
                           
                            ProgressPercent < 70  ? .red : .green
                            
                           
                            )
                        
                        
                        )
                        
                      
                        .cornerRadius(25)
                        .padding()
                        
                        
                    
                }
                Spacer()
                Divider()
            VStack {
                HStack {
                    Text(keyresultname)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                        
                        .padding([.top, .leading])
                    Spacer()
                }
                  
                
                }
                VStack {
                    HStack {
                        Text(metricdescription)
                            .font(.footnote)
                             .fontWeight(.medium)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.leading)
                       
                            .padding([.top, .leading, .trailing])
                        Spacer()
                        Text("\(progress)/357")
                             .font(.footnote)
                            .fontWeight(.medium)
                            .foregroundColor(Color.gray)
                             .multilineTextAlignment(.leading)
                        
                             .padding([.top, .leading, .trailing])
                        
                    }
                   
                }
                
                VStack {
                    ZStack(alignment: .leading) {
                        Rectangle()
                            .foregroundColor(Color(.secondarySystemBackground))
                            .frame(width: 350, height: 10)
                            .cornerRadius(10)
                        
                        LinearGradient(gradient: Gradient(colors: [
                           progress < 300 ? .orange : Color (.systemTeal),
                            progress < 300 ? .pink : .green
                        
                        ]), startPoint: .top, endPoint: .bottom)
                            .frame(width: CGFloat(progress), height: 10)
                            .cornerRadius(10)
                       
                        }
                    .padding (.bottom)
                    
           //       HStack {
              //      Text(progress < 300 ? "\(currentProgress) of 6" : "COMPLETED")
                     //   .bold()
              //      Spacer()
              //      Text ("\(progress / 3)%")
               //     }
               Divider()
                .frame(width: 350)
                    Spacer()
            }
                .frame(width: 350)
                .onTapGesture {
                    if self.progress < 350 {
                        self.progress += 60

                    }
                    if self.ProgressPercent < 100 {
                        self.ProgressPercent += 20
                        self.ProgressPercent += 5
                    }
                }
                .animation(.spring())
                
           
                
}
                
        .background(Color(.systemBackground))
      
 
            
            
        }
        .padding(.top)
        .background(Color(.secondarySystemBackground))
        .edgesIgnoringSafeArea(.all)
        
      // Objective finishes here
       
    }
}



struct Overview_Previews: PreviewProvider {
    static var previews: some View {
        Overview(metricdescription: "Minutes", objectivename: "Get healthy", keyresultname: "Meditate 500 minutes")
        
    }
}

