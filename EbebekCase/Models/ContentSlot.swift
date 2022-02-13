//
//  ContentSlot.swift
//  EbebekCase
//
//  Created by BarisOdabasi on 13.02.2022.
//

import Foundation


struct ContentSlot: Codable {
    var slotId: String?
    var slotUuid: String?
    var position: String?
    var name: String?
    var slotShared: Bool?
    var components: Components
}
