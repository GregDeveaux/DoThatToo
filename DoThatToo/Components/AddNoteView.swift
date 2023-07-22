//
//  AddNoteView.swift
//  DoThatToo
//
//  Created by Greg Deveaux on 22/07/2023.
//

import SwiftUI

struct AddNoteView: View {
    @State private var note = Note(title: "")
    @Environment(\.dismiss) private var dismiss

    var body: some View {

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
                Button {
                    dismiss()
                } label: {
                    Text("Ajouter")
                }
                .buttonStyle(.borderedProminent)
                .tint(.red)
            }
        }
    }
}

struct AddNoteView_Previews: PreviewProvider {
    static var previews: some View {
        AddNoteView()
    }
}
