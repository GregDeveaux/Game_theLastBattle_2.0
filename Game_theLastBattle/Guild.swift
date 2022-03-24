//
//  Team.swift
//  Game_theLastBattle
//
//  Created by Greg Deveaux on 16/03/2022.
//

import Foundation





// -----------------------------------------------------------------------------------------------------
// MARK: Struct Team
// >>> Creation of a team of 3 fighters
// -----------------------------------------------------------------------------------------------------

struct Guild {
    
    var sizeMaxFighters: Int // number of fighters maximum for each team
    
    
    // Kind available to assign to the 3 team fighters
    // As variable are of type Reference, we create and use a copy of the variable for create a new type Value
    private var _wizard: Wizard
    
    var wizard: Wizard {
        mutating get {
                    if !isKnownUniquelyReferenced(&_wizard) {
                        _wizard = _wizard.copy() as! Wizard
                    }
                    return _wizard
                }
                set {
                    _wizard = newValue
                }
    }
    
   
    private var _warrior: Warrior

    var warrior: Warrior {
        mutating get {
                    if !isKnownUniquelyReferenced(&_warrior) {
                        _warrior = _warrior.copy() as! Warrior
                    }
                    return _warrior
                }
                set {
                    _warrior = newValue
                }
    }
    
    
    private var _dwarf: Dwarf
    
    var dwarf: Dwarf {
        mutating get {
                    if !isKnownUniquelyReferenced(&_dwarf) {
                        _dwarf = _dwarf.copy() as! Dwarf
                    }
                    return _dwarf
                }
                set {
                    _dwarf = newValue
                }
    }
       
    
    // The guild is composed of 3 fighters
    var guild: [FighterProtocol] = []
    
    
    init(sizeMaxFighters: Int, wizard: Wizard = Wizard(), warrior: Warrior = Warrior(), dwarf: Dwarf = Dwarf()) {
        self.sizeMaxFighters = sizeMaxFighters
        self._wizard = wizard
        self._warrior = warrior
        self._dwarf = dwarf
    }
    

    
    

//    func allCharactersDead() {
//        if Player.teamOfPlayer.contains({$0.dead == true}) {
//            return
//        }
//    }

}

