//
//  ObservationEventsJSONLoader.swift
//  Field Survey
//
//  Created by Eric Rachell on 4/6/18.
//  Copyright © 2018 Eric Rachell. All rights reserved.
//

import Foundation

class ObservationEventsJSONLoader{
    
    class func load(filename: String) -> [ObservationEvent]{
        var observation = [ObservationEvent]()
        
        if let path = Bundle.main.path(forResource: filename, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
                observation = ObservationEventJSONParser.parse(data)
        }
        return observation
    }

}

