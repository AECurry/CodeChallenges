//
//  Chicken+CoreDataProperties.swift
//  ST18 - 'CoreData Debug' - Debugging, CoreData
//
//  Created by AnnElaine on 1/27/26.
//

import Foundation
import CoreData

extension Chicken {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Chicken> {
        return NSFetchRequest<Chicken>(entityName: "Chicken")
    }

    @NSManaged public var name: String?
}


