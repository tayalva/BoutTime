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
    let url: String
}

var events: [Events] = [

    Events(event: "Alaska became the 49th State", year: 1959, url: "https://en.wikipedia.org/wiki/Alaska"),
    Events(event: "Space shuttle Challenger explodes during lift off", year: 1986, url: "https://en.wikipedia.org/wiki/Space_Shuttle_Challenger_disaster"),
    Events(event: "9/11", year: 2001, url: "https://en.wikipedia.org/wiki/September_11_attacks"),
    Events(event: "Apollo 11: Neil Armstrong is the first man to walk on the moon", year: 1969, url: "https://en.wikipedia.org/wiki/Apollo_11"),
    Events(event: "Roe Vs. Wade: Abortions before 24 weeks are made legal", year: 1973, url: "https://en.wikipedia.org/wiki/Roe_v._Wade"),
    Events(event: "President Reagan challenged Gorbachev to 'Tear down this wall!'", year: 1987, url: "https://en.wikipedia.org/wiki/Tear_down_this_wall!"),
    Events(event: "Rodney King riots in Los Angeles", year: 1992, url: "https://en.wikipedia.org/wiki/1992_Los_Angeles_riots"),
    Events(event: "The Northridge earthquake in Los Angeles", year: 1994, url: "https://en.wikipedia.org/wiki/1994_Northridge_earthquake"),
    Events(event: "Oklahoma City Bombing", year: 1995, url: "https://en.wikipedia.org/wiki/Oklahoma_City_bombing"),
    Events(event: "Hurrican Katrina devastates Louisiana, Mississippi and Alabama", year: 2005, url: "https://en.wikipedia.org/wiki/Hurricane_Katrina"),
    Events(event: "Facebook was officially launched", year: 2004, url: "https://en.wikipedia.org/wiki/Facebook"),
    Events(event: "Death of Michael Jackson", year: 2009, url: "https://en.wikipedia.org/wiki/Michael_Jackson"),
    Events(event: "Benghazi terrorist attack on U.S. government facilities", year: 2012, url: "https://en.wikipedia.org/wiki/2012_Benghazi_attack"),
    Events(event: "United States invades Iraq", year: 2003, url: "https://en.wikipedia.org/wiki/Iraq_War"),
    Events(event: "Engel vs. Vitale: prayer in public schools is deemed unconstitutional", year: 1962, url: "https://en.wikipedia.org/wiki/Engel_v._Vitale"),
    Events(event: "Bay of Pigs invasion in Cuba", year: 1961, url: "https://en.wikipedia.org/wiki/Bay_of_Pigs_Invasion"),
    Events(event: "Disneyland officially opens in California", year: 1955, url: "https://en.wikipedia.org/wiki/Disneyland"),
    Events(event: "Attack on Pearl Harbor", year: 1941, url: "https://en.wikipedia.org/wiki/Pearl_Harbor"), //18
    Events(event: "Henry Ford developed the modern assembly line", year: 1913, url: "https://en.wikipedia.org/wiki/Henry_Ford"),
    Events(event: "The U.S. declared war on Germany, entering World War I", year: 1917, url: "https://en.wikipedia.org/wiki/World_War_I"),
    Events(event: "The invasion of Normandy, also known as D-Day", year: 1944, url: "https://en.wikipedia.org/wiki/Normandy_landings"),
    Events(event: "Maritn Luther King Jr. gives 'I have a dream' speech'", year: 1963, url: "https://en.wikipedia.org/wiki/I_Have_a_Dream"),
        Events(event: "Space Race: The Soviet Union launched Sputnik", year: 1957, url: "https://en.wikipedia.org/wiki/Sputnik_1"),
    Events(event: "Star Wars: A New Hope, was released", year: 1977, url: "https://en.wikipedia.org/wiki/Star_Wars"),
    Events(event: "The Chicago Cubs win the world series for the first time since 1908", year: 2016, url: "https://en.wikipedia.org/wiki/Chicago_Cubs")
    
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
