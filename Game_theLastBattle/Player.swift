//
//  Player.swift
//  Game_theLastBattle
//
//  Created by Greg Deveaux on 28/02/2022.
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
    
    // Select a existing fighter in a guild
    func chooseTheFighter(in category: String, by player: Player, weapon: Bool) -> Int {
        var num = 1
        print("Guild \(player.name), Select the number of one of \(category)")
        var numberOfFighter = 0
        var isDead = true
        
        // We create a list of the fighters of the guild whether he's alive or dead
        for fighter in guild.fighters {
            if fighter.dead == false {
                print("   \(num) • a \(fighter.currentType), his name is \(fighter.name) and have \(fighter.lifepoint) of lifepoint, \(fighter.heal) of heal and a weapon \(fighter.nameWeapon) with \(fighter.powerAttack) of attack power.")
            } else {
                print("   \(num) • ☠️ ☠️ your \(fighter.currentType) \(fighter.name) can no longer be selected ☠️ ☠️")
            }
            num += 1
        }
        
        while isDead == true  {
            if let selectNumber = Int(readLine()!) {
                numberOfFighter = selectNumber - 1
                if  numberOfFighter + 1 <= guild.sizeMaxFighters && guild.fighters[numberOfFighter].dead == true {
                    print(" this fighter is dead! Please, choose the another")
                    isDead = true
                }
                else if 1...guild.sizeMaxFighters ~= selectNumber {
                    print("you have selected your \(guild.fighters[numberOfFighter].currentType) \(guild.fighters[numberOfFighter].name) \(guild.fighters[numberOfFighter].dead)")
                    print("")
                    if weapon == true {
                        guild.choisenYourWeapon(numberOfFighter)
                    }
                    isDead = false
                    return numberOfFighter
                }
            }
            print(" ⚠️ Wrong number, try again! ⚠️ ")
            print("Please select only a number between 1 and \(guild.sizeMaxFighters)")
                isDead = true
        }
        return numberOfFighter
    }
    
    
    
    // function allowing to give a name to a fighter and who verifies if the name doesn't exist
    func giveNameToFighter(different otherFighters: [FighterProtocol]) -> String {
        // Text for name request
        print("Give him a name!")
        
        // call an empty variable for the integration of the fighter name
        while name.isEmpty {
            if let nameCharacterWrites = readLine()?.uppercased() {
                if otherFighters.contains(where: ({$0.name == nameCharacterWrites})) {  // if the layer write a name already contains in the both team
                    print("⚠️ This name is already taken, please enter an other ⚠️")
                    name = ""
                } else {
                    name = nameCharacterWrites
                }
            }
        }
        return name
    }
     
}
