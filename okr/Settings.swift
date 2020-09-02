//
//  Settings.swift
//  okr
//
//  Created by Konstantin Singer on 05.06.20.
//  Copyright © 2020 Konstantin Singer. All rights reserved.
//

import SwiftUI

struct Settings: View {
    
    // 1.
    @State private var enableAirplaneMode = false
   
    @State private var currentvalue = ""
    @State var isPrivate: Bool = true
    @State private var isShareSheetShowing = false
    
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
                            Section(header: Text("Notifications")){
                                    
                                
                               
                            
                            
                            Toggle(isOn: $isPrivate) {
                                Text("Get Notifications")
                            }
                            }
                            
                            // 5.
                            
                            
                            
                            Section (header: Text("Community")){
                          
                          // Button ends here
                           Button(action:
                                                    shareButton
                                                    ) {
                                                      VStack {
                                                          HStack {
                                                           Image(systemName: "square.and.arrow.up.fill")
                                .padding()
                                     
                                         .accentColor(.white)
                                     
                                    .background(Color.green)
                                     .frame(width: 28.0, height: 28.0)
                                     .cornerRadius(6)
                                         .padding(.horizontal)
                                 
                                Spacer()
                                 .frame(width: 40.0, height: 10)
                                     Text("Share with a friend")
                                     .accentColor(.primary)
                                     }
                                                          //HStack ends here
                                                          .padding(.leading, -11.0)
                                                      }
                                                   
                           
                                                    }
                                                  
                                
                                
                                
                                
                                Button(action: {
                                     print("Edit button was tapped")
                                 }) {
                                   VStack {
                                       HStack {
                                        Image("Appstore-icon")
                      .resizable()
                                        .frame(width: 30.0, height: 30.0)
                                            .padding()
                                           
                                               .accentColor(.white)
                                           
                                          .background(Color.blue)
                                            .frame(width: 30.0, height: 28.0)
                                           .cornerRadius(6)
                                               .padding(.horizontal)
                                       
                                      Spacer()
                                       .frame(width: 40.0, height: 10)
                                           Text("Review Us on the App Store!")
                                            .accentColor(.primary)
                                           }
                                       //HStack ends here
                                       .padding(.leading, -11.0)
                                   }
                                
        
                                 }
                               
                                // Twitter- Button starts here
                                
                                Button(action: {UIApplication.shared.open(URL(string: "https://twitter.com")!)}) {
                                                                 VStack {
                                                                     HStack {
                                                                          Image("twitter")
                                                                        
                                                        .frame(width: 28.0, height: 28.0)
                                                                             .accentColor(.white)
                                                                         
                                                                            .background(Color (red:0 / 255, green: 172 / 255, blue: 237 / 255))
                                                                         
                                                                         .cornerRadius(6)
                                                                             .padding(.horizontal)
                                                                     
                                                                    Spacer()
                                                                     .frame(width: 40.0, height: 10)
                                                                         Text("Follow Us on Twitter")
                                                                         .accentColor(.primary)
                                                                         }
                                                                     //HStack ends here
                                                                     .padding(.leading, -11.0)
                                                                 }
                                                              
                                      
                                                               }
                                    //VStack ends here
                                
                                
                                                              Button(action: {UIApplication.shared.open(URL(string: "https://linkedin.com")!)}) {
                                                                                               VStack {
                                                                                                   HStack {
                                                                                                        Image("linkedin")
                                                                                                    .resizable()
                                   .frame(width: 17.0, height: 17.0)
                                                                                      .frame(width: 28.0, height: 28.0)
                                                                                                           .accentColor(.white)
                                                                                                       
                                                                                                          .background(Color (red:0 / 255, green: 119 / 255, blue: 181 / 255))
                                                                                                       
                                                                                                       .cornerRadius(6)
                                                                                                           .padding(.horizontal)
                                                                                                   
                                                                                                  Spacer()
                                                                                                   .frame(width: 40.0, height: 10)
                                                                                                       Text("Follow Us on LinkedIn")
                                                                                                       .accentColor(.primary)
                                                                                                       }
                                                                                                   //HStack ends here
                                                                                                   .padding(.leading, -11.0)
                                                                                               }
                                                                                            
                                                                    
                                                                                             }
                                
                                
                                Button(action: {
                                                                                                  print("Edit button was tapped")
                                                                                              }) {
                                                                                                VStack {
                                                                                                    HStack {
                                                                                                        Image(systemName: "envelope.fill")
                                                                                                            .padding()
                                                                                                        
                                                                                                            .accentColor(.white)
                                                                                                        
                                                                                                       .background(Color.blue)
                                                                                                        .frame(width: 28.0, height: 28.0)
                                                                                                        .cornerRadius(6)
                                                                                                            .padding(.horizontal)
                                                                                                    
                                                                                                   Spacer()
                                                                                                    .frame(width: 40.0, height: 10)
                                                                                                        Text("Send Us Feedback")
                                                                                                        .accentColor(.primary)
                                                                                                        }
                                                                                                    //HStack ends here
                                                                                                    .padding(.leading, -11.0)
                                                                                                }
                                                                                             
                                                                     
                                                                                              }
                                
                                
                                NavigationLink(destination: acknowledgment())                         {
                                                                                                                              VStack {
                                                                                                                                  HStack {
                                                                                                                                    Image(systemName: "suit.heart.fill").foregroundColor(.white)
                                
                                                                                                                                          .padding()
                                                                                                                                      
                                                                                                                                          
                                                                 
                                                                                                                                     .background(Color.red)
                                                                                                                                      .frame(width: 28.0, height: 28.0)
                                                                                                                                      .cornerRadius(6)
                                                                                                                                          .padding(.horizontal)
                                                                                                                                                     Spacer()
                                                                                                                                  .frame(width: 40.0, height: 10)
                                                                                                                                      Text("Acknowledgements")
                                                                                                                                      .accentColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                                                                                                                                      }
                                                                                                                                  //HStack ends here
                                                                                                                                  .padding(.leading, -11.0)
                                                                                                                              }
                                                                                                                           
                                                                                                   
                                                                                                                            }
                                
                            }
                                      
                                         
                                   
                                        
                        
                                        
                                        
                                          
                                          }
                            
                        
                    
                          
                              
                        } .navigationBarTitle(Text("Settings"))
                        
                        VStack(spacing: 5) {
                            Text("MyOKR Version 1.0")
                                .font(.headline)
                            Text("Designed with ❤️ & 🥨 in Stuttgart")
                                .font(.footnote)
                        }.padding(.vertical)
                    
                    }
                  
                    
                   
    
                   
                   
                }
                 
               
            }
        }
    func shareButton() {
        isShareSheetShowing.toggle()
        
        let url = URL (string: "https://apple.com")
        let sharetext = Text ("share this")
        let av = UIActivityViewController(activityItems: [url!, sharetext], applicationActivities: nil)
        
        UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
    }
     
    }



struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
