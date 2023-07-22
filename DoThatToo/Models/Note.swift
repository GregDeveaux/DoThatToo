//
//  Note.swift
//  DoThatToo
//
//  Created by Greg Deveaux on 22/07/2023.
//

import Foundation

struct Note: Identifiable {
    let id = UUID()
    var title: String
    var iscompleted: Bool = false

    static let examples = [
        Note(title: "créer l'objet 3D sur Blender", iscompleted: true),
        Note(title: "Intégrer l'objet"),
        Note(title: "Ajouter le texte"),
        Note(title: "Créer les actions des boutons")
    ]
}

extension Note {

}
