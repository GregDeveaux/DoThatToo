//
//  HomeViewModel.swift
//  DoThatToo
//
//  Created by Greg Deveaux on 23/07/2023.
//

import Foundation

class HomeViewModel: ObservableObject {

    @Published var notes: [Note] = Note.examples

    func addNote(_ note: Note) {
        notes.append(note)
    }

}
