//
//  ContentView.swift
//  okr
//
//  Created by Konstantin Singer on 28.05.20.
//  Copyright © 2020 Konstantin Singer. All rights reserved.
//

import SwiftUI

class KeyResult: ObservableObject {
    @Published var description = "My first Key Result"
    
}


struct ContentView: View {
    
    @ObservedObject private var keyresult = KeyResult()
    
    // 1.
    @State private var enableAirplaneMode = false
    @State private var keyresultname = ""
    @State private var keyresultstartnumber = ""
    @State private var keyresultendnumber = ""
    @State private var currentvalue = ""
    @Binding var showUpdate: Bool
    
    // 2.
    var metric = ["miles", "kilometres", "hours", "times", "%", "items"]
    @State private var selectedMetric = 0
    
    var objectives = ["Financial Independance", "Get fit and feel wealthy"]
       @State private var selectedObjective = 0
    
    var body: some View {
        VStack {
            NavigationView {
                // 3.

                VStack {
                    VStack {
                        Form {
                            // 4.
                            Section(header: Text("Description")){
                                     TextField("Describe your Key Result",
                                               text: $keyresult.description)
                                
                               
                            }
                            
                            Section(header: Text("Priority"))
                                             {
                                              
                                         
                                             
                                               
                                            Picker(selection: $selectedObjective, label: Text("Select Objective") ) {
                                                   ForEach(0..<objectives.count) {
                                                       Text(self.objectives[$0])
                                                   }
                                               }
                                             
                                             
                                               
                                               }
                            
                            // 5.
                            Section(header: Text("Set your Values"))
                          {
                           
                            TextField("Start Value", text: $keyresultstartnumber)
                                          .keyboardType(.numberPad)
                            
                            TextField("Target Value", text: $keyresultendnumber)
                                          .keyboardType(.numberPad)
                            
                            TextField("Current Value", text: $currentvalue)
                            .keyboardType(.numberPad)
                            
                            
                            Picker(selection: $selectedMetric, label: Text("Select Metric") ) {
                                ForEach(0..<metric.count) {
                                    Text(self.metric[$0])
                                }
                            }
                          
                          
                          
                            
                            }
                            
                            Section(header: Text("Timeframe"))
                                        {
                                         
                                    
                                        
                                          
                                          DatePicker(selection: .constant(Date()), label: { Text("Start Date") })
                                            DatePicker(selection: .constant(Date()), label: { Text("End Date") })
                                        
                                        
                                          
                                          }
                        
                    
                          
                              
                        }
                    .navigationBarTitle("New Key Result")
                        .navigationBarItems(leading: Button(action: {
                            print("Dismissing sheet view...")
                            self.showUpdate = false
                        }) {
                            Text("Cancel")
                            }, trailing: Button(action: {
                                print("Dismissing sheet view...")
                                self.showUpdate = false
                            }) {
                                Text("Done").bold()
                            }
                        )
                    
                        
                        
                    }
                    VStack {
                
                     Button(action: {
                                                   print("register account")
                                               }) {
                                                   Text("Add now")
                                                }
                     
                    
                        Spacer()
                            .padding(.top)
                          
                           
                          
                     
                            
                        
                    }
                   
                    .frame(width: nil, height: 40.0)
                    
                   
    
                   
                   
                }
                 
               
            }
        }
    
     
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(showUpdate: .constant(false))
    }
}
    
