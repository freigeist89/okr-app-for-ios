//
//  acknowledgment.swift
//  okr
//
//  Created by Konstantin Singer on 08.06.20.
//  Copyright © 2020 Konstantin Singer. All rights reserved.
//

import SwiftUI

struct acknowledgment: View {
    var body: some View {
        VStack {
            
            List {
            Text ("🙏 Besnik Brahimi")
            Text ("🙏 Tanja Hilkert")
            Text ("🙏 Paul Hudson")
            Text ("🙏 Meng To")
            }
            .navigationBarTitle(Text("Thanks to.."))
       
        }
        
        
    }
}

struct acknowledgment_Previews: PreviewProvider {
    static var previews: some View {
        acknowledgment()
    }
}
