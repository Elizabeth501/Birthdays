//
//  ContentView.swift
//  Birthdays
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct ContentView: View {
    @State private var friends: [Friend] = [
        Friend (name: "Madison", birthday: .now),
        Friend (name: "Kelechi", birthday: .now),
    ]
        @State private var newName = ""
        @State private var newBirthday = Date.now
    
    
    
        var body: some View {
            NavigationStack{
                List(friends, id: \.name) {friend in
                    HStack {
                        Text(friend.name)
                        Spacer()
                        Text(friend.birthday, format: .dateTime.month(.wide).day().year())
                    }// end of HStack
                }//end of list (line 18)
                .navigationTitle("Birthdays")
                .safeAreaInset(edge: .bottom){
                }//safeAreaInset
            } // end of NStack
        } // end of some view
    }//end of content view

#Preview {
    ContentView()
}
