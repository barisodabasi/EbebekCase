//
//  Banners.swift
//  EbebekCase
//
//  Created by BarisOdabasi on 13.02.2022.
//

import Foundation


struct Banners: Codable {
    var ebebekHomepageTabRespBannerComponent1: BannerComponent?
    var ebebekHomepageTabRespBannerComponent2: BannerComponent?
    var ebebekHomepageTabRespBannerComponent3: BannerComponent?
    var ebebekHomepageTabRespBannerComponent4: BannerComponent?
    var ebebekHomepageTabRespBannerComponent5: BannerComponent?
    var ebebekHomepageTabRespBannerComponent6: BannerComponent?
    var ebebekHomepageTabRespBannerComponent7: BannerComponent?
    var ebebekHomepageTabRespBannerComponent8: BannerComponent?
    var ebebekHomepageTabRespBannerComponent9: BannerComponent?
    var ebebekHomepageTabRespBannerComponent10: BannerComponent?
    
    enum CodingKeys: String, CodingKey {
        
        case ebebekHomepageTabRespBannerComponent1 = "EbebekHomepageTabRespBannerComponent1"
        case ebebekHomepageTabRespBannerComponent2 = "EbebekHomepageTabRespBannerComponent2"
        case ebebekHomepageTabRespBannerComponent3 = "EbebekHomepageTabRespBannerComponent3"
        case ebebekHomepageTabRespBannerComponent4 = "EbebekHomepageTabRespBannerComponent4"
        case ebebekHomepageTabRespBannerComponent5 = "EbebekHomepageTabRespBannerComponent5"
        case ebebekHomepageTabRespBannerComponent6 = "EbebekHomepageTabRespBannerComponent6"
        case ebebekHomepageTabRespBannerComponent7 = "EbebekHomepageTabRespBannerComponent7"
        case ebebekHomepageTabRespBannerComponent8 = "EbebekHomepageTabRespBannerComponent8"
        case ebebekHomepageTabRespBannerComponent9 = "EbebekHomepageTabRespBannerComponent9"
        case ebebekHomepageTabRespBannerComponent10 = "EbebekHomepageTabRespBannerComponent10"
    }
}
