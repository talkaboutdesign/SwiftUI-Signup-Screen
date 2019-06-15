//
//  ContentView.swift
//  Buttons
//
//  Created by Maksim Petriv on 6/14/19.
//  Copyright © 2019 Talkabout Design, LLC. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @State var subscribed = false
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
            
            // This will only get rendered when the state changes to subscribed.
            if subscribed {
                Text("Thanks for subscribing to our course.")
                .padding(.top, 20)
            }
            
            Button(action: {
                print("Hello")
                    self.subscribed.toggle()
            }) {
                Text(subscribed ? "Success!" : "Subscribe Now")
                .foregroundColor(.white)
                .animation(.none)
                .padding(10)
                .frame(width: 200)
                .cornerRadius(20)
                .border(subscribed ? Color.green : Color.blue, width: 1, cornerRadius: 20)
                .background(subscribed ? Color.green : Color.blue)
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
            ContentView()
                .environment(\.colorScheme, .light)
       
    }
}
#endif
