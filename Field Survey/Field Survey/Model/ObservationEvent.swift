//
//  ObservationEvent.swift
//  Field Survey
//
//  Created by Eric Rachell on 4/6/18.
//  Copyright © 2018 Eric Rachell. All rights reserved.
//

import Foundation

struct ObservationEvent {
    let observation: Observation
    let title: String
    let description: String
    let date: Date
    
    init(observation: Observation, title: String, description: String, date: Date){
        self.observation = observation
        self.title = title
        self.description = description
        self.date = date
    }
    
    init?(observationName: String, title: String, description: String, date: Date){
        if let observation = Observation(rawValue: observationName){
            self.init(observation: observation, title: title, description: description, date: date)
        }else{
            return nil
        }
        
    }
    
}
