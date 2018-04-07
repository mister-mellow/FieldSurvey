//
//  ObservationEventJSONParser.swift
//  Field Survey
//
//  Created by Eric Rachell on 4/6/18.
//  Copyright © 2018 Eric Rachell. All rights reserved.
//

import Foundation

class ObservationEventJSONParser {
    
   static let dateFormatter = DateFormatter()
    
    
   class func parse(_ data: Data) -> [ObservationEvent] {
        var observationEvents = [ObservationEvent]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
    
    if let json = try? JSONSerialization.jsonObject(with: data, options: []),
    let root = json as? [String: Any],
    let status = root["status"] as? String,
    status == "ok" {
        
        if let events = root["events"] as? [Any] {
            for event in events {
                if let event = event as? [String: String]{
                    if let observationName = event["characteristic"],
                    let title = event["title"],
                    let description = event["description"],
                    let dateString = event["date"],
                    let date = dateFormatter.date(from: dateString){
                        
                        if let observationEvent = ObservationEvent(observationName: observationName, title: title, description: description, date: date){
                            observationEvents.append(observationEvent)
                        
                    }
                    
                }
            }
        }
        
    }
    
    }
        return observationEvents
    }
}

