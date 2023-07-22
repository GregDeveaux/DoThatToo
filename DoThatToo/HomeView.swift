//
//  HomeView.swift
//  DoThatToo
//
//  Created by Greg Deveaux on 22/07/2023.
//

import SwiftUI

struct HomeView: View {
    @State private var notes = Note.examples
    @State private var isAddSheetPresented: Bool = false

    var body: some View {
        VStack {
            List($notes) { $note in
                HStack {
                    Image(systemName: note.iscompleted ? "checkmark.square.fill" : "square")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                        .onTapGesture {
                            note.iscompleted.toggle()
                        }
                    Text(note.title)
                }
            }
            Button {
                isAddSheetPresented.toggle()
                print("✅ HOMEVIEW/BUTTON: open sheet to add")
            } label: {
                Text("+")
                    .fontWeight(.bold)
                    .font(.title)
            }
            .buttonStyle(.borderedProminent)
        }
        .sheet(isPresented: $isAddSheetPresented) {
            AddNoteView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
