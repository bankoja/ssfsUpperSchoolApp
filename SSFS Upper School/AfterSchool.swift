//
//  AfterSchool.swift
//  SSFS Upper School
//
//  Created by james on 4/11/17.
//  Copyright © 2017 james. All rights reserved.
//

import Foundation
class AfterS {
    var activity = String()
    var time = String()
    
    
    init(){
        if let url = URL(string: "http://www.ssfs.org/athletics/athletics-today") {
            do {
                self.activity = try String(contentsOf: url)
            } catch {
                print("There was an error.")
                // This gives activity the web contents of the url's webpage.
            }
            
        }
    }
    
    func getGames(dayOfWeek: Int) -> String {
        var name: String = ""
        let regExText =  ">18<(.*?)</a>"
        if let range = activity.range(of:regExText, options: .regularExpression) {
            name = activity.substring(with:range)
        }
        do {
            let regex = try NSRegularExpression(pattern: regExText, options: NSRegularExpression.Options.caseInsensitive)
            let matches = regex.matches(in: activity as String, options: [], range: NSMakeRange(0, activity.characters.count))
            if let match = matches.first {
                name = (activity as NSString).substring(with: match.rangeAt(1))
                // These lines of code isolate the data that I intend to pull from the url. (Not successful so far).
            }
        } catch {
        }
        
        return name
    }
    
    
}

