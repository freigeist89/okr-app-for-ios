//
//  TabBar.swift
//  konstantinsinger
//
//  Created by Konstantin Singer on 06.05.20.
//  Copyright © 2020 Konstantin Singer. All rights reserved.
//

import SwiftUI

struct TabBar: View {
   init() {
     setupTabBar()
   }
    
    var body: some View {
        TabView {
            Home().tabItem {
                Image(systemName: "rectangle.stack.fill")
                Text("My OKRs")
            }
            Settings().tabItem {
                Image(systemName: "eye.fill")
                Text("Vision")
            }
            
            Settings().tabItem {
                Image(systemName: "gear")
                Text("Settings")
                
                
            }
        }
        .accentColor(Color (red:15 / 255, green: 184 / 255, blue: 255 / 255))
       
       
    }
}

extension TabBar {
  func setupTabBar() {
     UITabBar.appearance().tintColor = .white
    UITabBar.appearance().barTintColor = .black

   
    UITabBar.appearance().layer.borderColor = UIColor.clear.cgColor
    UITabBar.appearance().clipsToBounds = true
  }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar().previewDevice("iPhone X")
    }
}
