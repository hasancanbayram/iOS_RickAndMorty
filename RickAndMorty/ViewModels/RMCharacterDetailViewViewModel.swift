//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Hasan Can Bayram on 25.06.2024.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        return character.name.uppercased()
    }
}
