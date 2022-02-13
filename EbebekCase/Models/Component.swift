//
//  Component.swift
//  EbebekCase
//
//  Created by BarisOdabasi on 13.02.2022.
//

import Foundation


struct Component: Codable {
    var uid: String?
    var uuid: String?
    var typeCode: String?
    var modifiedtime: String?
    var name: String?
    var container: String?
    var components: HomePageComponent
    var synchronizationBlocked: String?
}
