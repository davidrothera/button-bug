//
//  ContentView.swift
//  Button Bug
//
//  Created by David Rothera on 22/11/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingDetails = false

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("Hello, world!")
                        .padding()
                        .navigationTitle("Test")
                }
            }
            .toolbar {
                Button {
                    isShowingDetails.toggle()
                } label: {
                    Label("Date", systemImage: "calendar")
                }
                .popover(isPresented: $isShowingDetails) {
                    DetailView()
                }
            }
        }
    }
}

struct DetailView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        Button("Touch Me!") {
            dismiss()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
