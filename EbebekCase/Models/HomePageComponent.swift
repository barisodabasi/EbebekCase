//
//  HomePageComponent.swift
//  EbebekCase
//
//  Created by BarisOdabasi on 13.02.2022.
//

import Foundation


struct HomePageComponent: Codable {
    var homepageTab1BannerCarouselComponent: CarouselComponent
    var homepageTab2BannerCarouselComponent: CarouselComponent
    var homepageTab3BannerCarouselComponent: CarouselComponent
    
    enum CodingKeys: String, CodingKey {
        
        case homepageTab1BannerCarouselComponent = "HomepageTab1BannerCarouselComponent"
        case homepageTab2BannerCarouselComponent = "HomepageTab2BannerCarouselComponent"
        case homepageTab3BannerCarouselComponent = "HomepageTab3BannerCarouselComponent"
    }
}
