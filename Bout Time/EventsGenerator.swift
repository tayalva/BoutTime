//
//  EventsGenerator.swift
//  Bout Time
//
//  Created by Taylor Smith on 3/20/17.
//  Copyright © 2017 Taylor Smith. All rights reserved.
//

import Foundation
import GameKit


struct Events {
    let event: String
    let year: Int
}

var events: [Events] = [

Events(event: "Alaska became the 49th State", year: 1959),
Events(event: "Space shuttle Challenger explodes during lift off", year: 1986),
Events(event: "9/11", year: 2001),
Events(event: "Apollo 11: Neil Armstrong is the first man to walk on the moon", year: 1969),
Events(event: "Roe Vs. Wade: Abortions before 24 weeks are made legal", year: 1973),
Events(event: "President Reagan challenged Gorbachev to 'Tear down this wall!'", year: 1987)
]


// assigns the events to an array to keep track of events that have been displayed already

var eventsIndexArray: [Events] = []

// resets the eventsIndexArray after each game, resulting in fresh events to be displayed

func resetEvents() {
    
    eventsIndexArray = []
    for events in events {
        
        eventsIndexArray.append(events)
    }
}
