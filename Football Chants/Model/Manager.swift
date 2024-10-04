//
//  Manager.swift
//  Football Chants
//
//  Created by Pedro Delmondes  on 04/10/2024.
//

import Foundation

enum JobType {
    case manager
    case headCoach
}

struct Manager {
    let name: String
    let job: JobType
}
