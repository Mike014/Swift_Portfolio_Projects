//
//  ContentView.swift
//  SwiftUITemplate
//
//  Created by Michele Grimaldi on 07/12/24.
//

import SwiftUI

struct ContentView: View {
    // Variables for the colors
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)

    // Body of the view
    var body: some View {
        // ZStack to put the main color in the background
        ZStack {
            mainColor.ignoresSafeArea()
            // VStack to put the content in the center of the screen
            VStack {
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text("What was the first computer bug?")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                // HStack to put the buttons in a row
                HStack {
                    Button(action: { print("Tapped on Choice 1") }, label: {
                        Text("Ant").font(.body).bold().padding().border(accentColor, width: 4)
                    })
                    Button(action: { print("Tapped on Choice 2") }, label: {
                        Text("Beetle").font(.body).bold().padding().border(accentColor, width: 4)
                    })
                    Button(action: { print("Tapped on Choice 3") }, label: {
                        Text("Moth").font(.body).bold().padding().border(accentColor, width: 4)
                    })
                    Button(action: { print("Tapped on Choice 4") }, label: {
                        Text("Fly").font(.body).bold().padding().border(accentColor, width: 4)
                    })
                }
            }
            // Set the color of the text to white
            .foregroundColor(.white)
        }
    }
}

// Preview of the view
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
