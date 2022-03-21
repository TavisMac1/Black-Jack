//
//  Stats+CoreDataProperties.swift
//  BlackJack
//
//  Created by tavmac on 2022-03-21.
//
//

import Foundation
import CoreData


extension Stats {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Stats> {
        return NSFetchRequest<Stats>(entityName: "Stats")
    }

    @NSManaged public var user_name: String?
    @NSManaged public var score: Int64

}

extension Stats : Identifiable {

}
