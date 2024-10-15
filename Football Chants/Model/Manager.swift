//
//  Manager.swift
//  Football Chants
//
//  Created by Pedro Delmondes  on 04/10/2024.
//

import Foundation

enum JobType: String {
    case manager = "Manager"
    case headCoach = "Head Coach"
}

struct Manager {
    let name: String
    let job: JobType
}
