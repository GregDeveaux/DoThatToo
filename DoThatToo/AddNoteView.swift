//
//  AddNoteView.swift
//  DoThatToo
//
//  Created by Greg Deveaux on 22/07/2023.
//

import SwiftUI

struct AddNoteView: View {
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var viewModel: HomeViewModel

    @FocusState var focusNote: Bool
    
    @State private var note: Note = Note(title: "")

    var body: some View {

        NavigationStack {
            ZStack {
                Color.green
                    .ignoresSafeArea()
                VStack {
                    TextField("Créer une note", text: $note.title)
                        .frame(height: 50)
                        .padding(5)
                        .background()
                        .cornerRadius(10)
                        .padding(30)
                        .focused($focusNote)
                    Button {
                        if focusNote {
                            viewModel.addNote(note)
                            dismiss()
                        }
                    } label: {
                        Text("Ajouter")
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.red)

                    Spacer()
                }
            }
        }
        .navigationTitle("Créer une note")
    }
}

struct AddNoteView_Previews: PreviewProvider {
    static var previews: some View {
        AddNoteView()
    }
}
