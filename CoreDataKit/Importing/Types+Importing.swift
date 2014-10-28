//
//  Types+Importing.swift
//  CoreDataKit
//
//  Created by Mathijs Kadijk on 27-10-14.
//  Copyright (c) 2014 Mathijs Kadijk. All rights reserved.
//

import Foundation

// MARK: - User info values

/// Key used on entity to define the identifying attribute in CoreData user info
let IdentifierUserInfoKey = "CDKId"

// MARK: Mapping

/// Key used on property to define mapping in CoreData user info
let MappingUserInfoKey = "CDKMap"

/// Value used with MappingUserInfoKey to disable all mapping behaviour
let SuppressMappingUserInfoValue = "CDKNoMapping"

/// Maximum of numbered MappingUserInfoKeys on an property
let MaxNumberedMappings = 10

// MARK: Relations

let RelationTypeUserInfoKey = "CDKRelationType"

enum RelationType: String {
    case RelatedById = "CDKRelatedById"
    case WithoutId = "CDKWithoutId"

    static func fromString(string: String) -> RelationType {
        switch string {
        case RelationType.WithoutId.rawValue:
            return .WithoutId

        default:
            return .RelatedById
        }
    }
}

// MARK: - Importable value

/// Value extracted from source that can be imported into a managed object
enum ImportableValue {
    // Some value is found
    case Some(AnyObject)

    // Value should be set to null
    case Null

    // No value is found
    case None
}
