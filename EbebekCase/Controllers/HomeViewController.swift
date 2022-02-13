//
//  ViewController.swift
//  EbebekCase
//
//  Created by BarisOdabasi on 11.02.2022.
//

import UIKit
import CoreMedia
import Kingfisher

class HomeViewController: UIViewController {
    //MARK: - IB Outlets
    @IBOutlet weak var categoriesCollectionView: UICollectionView!
    @IBOutlet weak var titleCollectionView: UICollectionView!
    @IBOutlet weak var bannersCollectionView: UICollectionView!
    
    //MARK: - Properties
    var carouselDataArray = [NetworkModel]()
    
    var tab1Array = [BannerComponent]()
    var tab2Array = [BannerComponent]()
    var tab3Array = [BannerComponent]()
    
    var selectedTab = [BannerComponent]()
    var selectedIndex = Int()
    
    var titleDataArray = [String]()
    
    let categoriesData = [
        CategoriesModel(name: "İnternete Özel", image: UIImage(named: "oval")!, isOvalImage: true),
        CategoriesModel(name: "Çok Satanlar", image: UIImage(named: "oval")!, isOvalImage: true),
        CategoriesModel(name: "İhtiyaç Listesi", image: UIImage(named: "oval")!, isOvalImage: false),
        CategoriesModel(name: "Emziren Anne", image: UIImage(named: "oval")!, isOvalImage: false),
        CategoriesModel(name: "İlk Hafta", image: UIImage(named: "oval")!, isOvalImage: false)
    ]
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        getCarouselData()
        categoriesCollectionView.delegate = self
        categoriesCollectionView.dataSource = self
        titleCollectionView.delegate = self
        titleCollectionView.dataSource = self
        bannersCollectionView.delegate = self
        bannersCollectionView.dataSource = self
 }

    //MARK: - Functions
    //Get Data And Make Array
    func getCarouselData() {
    DispatchQueue.main.async { [self] in
        HomeNetworkResponse.getCarousel { result, error in
            if error == nil {
                carouselDataArray.append(result!)
                
                let tab1Data = carouselDataArray.first!.contentSlots.contentSlot.first!.components.component.first!.components.homepageTab1BannerCarouselComponent
                let tab2Data = carouselDataArray.first!.contentSlots.contentSlot.first!.components.component.first!.components.homepageTab2BannerCarouselComponent
                let tab3Data = carouselDataArray.first!.contentSlots.contentSlot.first!.components.component.first!.components.homepageTab3BannerCarouselComponent
                
                titleDataArray.append((tab1Data.title))
                titleDataArray.append((tab2Data.title))
                titleDataArray.append((tab3Data.title))
                
                
                tab1Array.append(tab1Data.banners.ebebekHomepageTabRespBannerComponent1!)
                tab1Array.append(tab1Data.banners.ebebekHomepageTabRespBannerComponent2!)
                tab1Array.append(tab1Data.banners.ebebekHomepageTabRespBannerComponent3!)
                tab1Array.append(tab1Data.banners.ebebekHomepageTabRespBannerComponent4!)
                tab1Array.append(tab1Data.banners.ebebekHomepageTabRespBannerComponent5!)
                tab1Array.append(tab1Data.banners.ebebekHomepageTabRespBannerComponent6!)
                tab1Array.append(tab1Data.banners.ebebekHomepageTabRespBannerComponent7!)
                
                tab2Array.append(tab2Data.banners.ebebekHomepageTabRespBannerComponent1!)
                tab2Array.append(tab2Data.banners.ebebekHomepageTabRespBannerComponent2!)
                tab2Array.append(tab2Data.banners.ebebekHomepageTabRespBannerComponent3!)
                tab2Array.append(tab2Data.banners.ebebekHomepageTabRespBannerComponent4!)
                tab2Array.append(tab2Data.banners.ebebekHomepageTabRespBannerComponent5!)
                tab2Array.append(tab2Data.banners.ebebekHomepageTabRespBannerComponent6!)
                
                tab3Array.append(tab3Data.banners.ebebekHomepageTabRespBannerComponent1!)
                tab3Array.append(tab3Data.banners.ebebekHomepageTabRespBannerComponent2!)
                tab3Array.append(tab3Data.banners.ebebekHomepageTabRespBannerComponent3!)
                tab3Array.append(tab3Data.banners.ebebekHomepageTabRespBannerComponent4!)
                tab3Array.append(tab3Data.banners.ebebekHomepageTabRespBannerComponent5!)
                tab3Array.append(tab3Data.banners.ebebekHomepageTabRespBannerComponent6!)
                tab3Array.append(tab3Data.banners.ebebekHomepageTabRespBannerComponent7!)
                tab3Array.append(tab3Data.banners.ebebekHomepageTabRespBannerComponent8!)
                tab3Array.append(tab3Data.banners.ebebekHomepageTabRespBannerComponent9!)
                tab3Array.append(tab3Data.banners.ebebekHomepageTabRespBannerComponent10!)
                
                selectedTab = self.tab1Array
                bannersCollectionView.reloadData()
                titleCollectionView.reloadData()
             }
         }
      }
   }
}

//MARK: - CollectionView Delegate And DataSource
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == categoriesCollectionView{
            return categoriesData.count
        } else if collectionView == titleCollectionView{
            return titleDataArray.count
        } else {
            return selectedTab.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
       
        if collectionView == categoriesCollectionView{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoriesCollectionViewCell.identifier, for: indexPath) as! CategoriesCollectionViewCell
            cell.post = categoriesData[indexPath.row]
            return cell
            
        } else if collectionView == titleCollectionView{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TitleCollectionViewCell.identifier, for: indexPath) as! TitleCollectionViewCell
            cell.titleNameLabel.text = titleDataArray[indexPath.row]
            
            if selectedIndex == indexPath.row {
                cell.titleBackgroundView.backgroundColor = UIColor(named: "Color1")
                cell.titleNameLabel.textColor = .systemOrange
            } else {
                cell.titleBackgroundView.backgroundColor = .systemBackground
                cell.titleNameLabel.textColor = .label
            }
            return cell
            
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BannersCollectionViewCell.identifier, for: indexPath) as! BannersCollectionViewCell
            cell.layer.masksToBounds = true
            cell.layer.shadowOffset = CGSize(width: 0, height: 3)
            cell.layer.shadowColor = UIColor.lightGray.cgColor
            cell.layer.shadowRadius = 3
            cell.layer.shadowOpacity = 0.7
            cell.layer.cornerRadius = 15
            
            cell.bannersNameLabel.text = selectedTab[indexPath.row].name
            let y = selectedTab[indexPath.row].media.mobile.url
            cell.bannersImageView.kf.setImage(with: y)
            
            return cell
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == titleCollectionView{
            if indexPath.row == 0 {
                DispatchQueue.main.async {
                    self.selectedTab = self.tab1Array
                    self.selectedIndex = indexPath.row
                    self.bannersCollectionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .left, animated: true)
                    self.bannersCollectionView.reloadData()
                    self.titleCollectionView.reloadData()
                }
                
            } else if indexPath.row == 1 {
                DispatchQueue.main.async {
                    self.selectedTab = self.tab2Array
                    self.selectedIndex = indexPath.row
                    self.bannersCollectionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .left, animated: true)
                    self.bannersCollectionView.reloadData()
                    self.titleCollectionView.reloadData()
                }
            } else if indexPath.row == 2 {
                DispatchQueue.main.async {
                    self.selectedTab = self.tab3Array
                    self.selectedIndex = indexPath.row
                    self.bannersCollectionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .left, animated: true)
                    self.bannersCollectionView.reloadData()
                    self.titleCollectionView.reloadData()
                }
            }
        }
    }
}
