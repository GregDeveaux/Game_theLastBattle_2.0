//
//  Player.swift
//  Game_theLastBattle
//
//  Created by Greg Deveaux on 16/03/2022.
//

import Foundation



// -----------------------------------------------------------------------------------------------------
// MARK: Class Player
// >>> Steps to différent actions of players
// -----------------------------------------------------------------------------------------------------

class Player {
    
    var name: String = ""                           // create the name player
    var guild = Guild(sizeMaxFighters: 2)           // call each team array of player with maximun of 3 fighters
    var fightersInGuild = 0                         // fighters currently in the guild

    

    
    // Enter the name of the guild
    func EnterTheNameOfGuild(_ numberPlayer: Int, nameDifferent otherPlayer: Player) {
        print("Player \(numberPlayer), enter your team name")
        while name.isEmpty {
            if let nameWrites = readLine()?.uppercased() {
                if !nameWrites.isEmpty && nameWrites != otherPlayer.name {
                    name = nameWrites
                }
                else {
                    print("Please, enter the other Guild Name, thanks")
                }
            }
        }
    }
    
    
    
    // Message explaining the creation of the guild, nominative per each player
    func createYourGuild() {

        print ("""
                
        ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
                                   🌑🌑🌑🌑🌑🌒🌓🌔🌕🌕🌕🌕🌕  WELCOME TO THE GUILD "\(name.uppercased())"  🌕🌕🌕🌕🌕🌕🌖🌗🌘🌑🌑🌑🌑🌑
        ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————

            You have to choose 3 fighters in the list (you can take same or different).
            For that you select the number corresponding to the type of fighter desired and the you give him a name:
              
            \(Wizard().description)
              
            \(Warrior().description)
              
            \(Dwarf().description)
              
        ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————
        ————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————————


        """)
        print(Guild.MessageCurrentChoice.first.rawValue)
        
        guild.selectYourFighters()
    }
    
     
}
