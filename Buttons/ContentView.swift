//
//  ContentView.swift
//  Buttons
//
//  Created by Maksim Petriv on 6/14/19.
//  Copyright © 2019 Talkabout Design, LLC. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack {
            Image("swift")
            .resizable()
            .frame(width: 80, height: 80)
            .clipShape(Circle())
            
            Text("SwiftUI for Designers")
            .font(.title)
            .bold()
            .foregroundColor(.primary)
            Text("Start learning SwiftUI Today")
            .font(.body)
            .foregroundColor(.secondary)
            
            Button(action: {
                print("Hello")
            }) {
                Text("Subscribe Now")
                .foregroundColor(.white)
                .padding(10)
                .frame(width: 200)
                .cornerRadius(20)
                .border(Color.blue, width: 1, cornerRadius: 20)
                .background(Color.blue)
                .cornerRadius(20)
                .shadow(radius: 2)
            }
            .padding(.top, 20)
            
            Text("Copyright 2019, Talkabout Design, LLC")
            .font(.caption)
            .foregroundColor(.secondary)
            .padding(.top, 60)
        }
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environment(\.colorScheme, .light)
            ContentView()
                .environment(\.colorScheme, .dark)
        }
       
    }
}
#endif
