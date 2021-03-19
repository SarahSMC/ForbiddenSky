//
//  Cards.swift
//  ForbiddenSky
//
//  Created by Sarah Mae Campbell on 3/18/21.
//  Copyright © 2021 Sarah Mae Campbell. All rights reserved.
//

import Foundation

struct GearCard {
    var cards: [String] = ["Defrayer","Aerometer","Strike Shield","Gravity Hook","Strike Shield","Gravity Hook","Time Throttle","Stratoscope","Med Kit","Remote Fuser","Platform Clamp","Jetpack","Jetpack","Jetpack"]
    var discardPile:[String] = []
    init() {
    }
    enum cardType {
        case defrayer, aerometer, strikeShield, gravityHook, timeThrottle, stratoscope, medKit, remoteFuser, platformClamp, jetpack
    }
    mutating func shuffleCard () {
        if cards.count > 0 {
        cards.shuffle()
        } else {
            cards = ["Defrayer","Aerometer","Strike Shield","Gravity Hook","Strike Shield","Gravity Hook","Time Throttle","Stratoscope","Med Kit","Remote Fuser","Platform Clamp","Jetpack","Jetpack","Jetpack"]
            discardPile = []
            cards.shuffle()
        }
    }
    mutating func dealACard () -> String {
        if cards.count > 0 {
        let card = cards[0]
        cards.remove(at: 0)
            return card
        } else {
            shuffleCard()
            let card = cards[0]
            cards.remove(at: 0)
            return card
        }
    }
    mutating func returnGearCard(whatCard: cardType) {
    switch whatCard {
    case .defrayer:
        discardPile.append("Defrayer")
    case .timeThrottle:
        discardPile.append("Time Throttle")
    case .aerometer:
        discardPile.append("Aerometer")
    case .gravityHook:
        discardPile.append("Gravity Hook")
    case .jetpack:
        discardPile.append("Jetpack")
    case .medKit:
        discardPile.append("Med Kit")
    case .platformClamp:
        discardPile.append("Platform Clamp")
    case .remoteFuser:
        discardPile.append("Remote Fuser")
    case .stratoscope:
        discardPile.append("Stratoscope")
    case .strikeShield:
        discardPile.append("Strike Shield")
    }
    }
}



