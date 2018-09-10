//
//  Entry+Convenience.swift
//  JournalCoreData
//
//  Created by Spencer Curtis on 8/12/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import CoreData

extension Entry {
    
    convenience init(title: String,
                     bodyText: String,
                     timestamp: Date = Date(),
                     mood: String,
                     identifier: String = UUID().uuidString,
                     context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        
        self.init(context: context)
        
        self.title = title
        self.bodyText = bodyText
        self.mood = mood
        self.timestamp = timestamp
        self.identifier = identifier
    }
    
    convenience init?(entryRepresentation: EntryRepresentation, context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        
//            let title = entryRepresentation.title,
//            let bodyText = entryRepresentation.bodyText,
//            let mood = entryRepresentation.mood,
//            let timestamp = entryRepresentation.timestamp,
//            let identifier = entryRepresentation.identifier
//
        self.init(title: entryRepresentation.title, bodyText: entryRepresentation.bodyText, timestamp: entryRepresentation.timestamp, mood: entryRepresentation.mood, identifier: entryRepresentation.identifier, context: context)
    }
}
