//
//  HomePageViewController.swift
//  WannaMovieAPP
//
//  Created by Jhen Mu on 2022/1/12.
//

import UIKit

class HomePageViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{

    
    
    //MARK:-Properties
    let searchViewController = UISearchController(searchResultsController:SearchResultViewController())
    
    let homeView = HomePageView()
    
    let sections = HomePageSection.allCases
    
    //MARK:LifeCycle
    override func loadView() {
        view = homeView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setSearchViewController()
        setTableView()
    }

    
    //MARK:-setSearchViewController
    private func setSearchViewController(){
        searchViewController.searchResultsUpdater = self
        searchViewController.searchBar.barTintColor = .black
        searchViewController.searchBar.placeholder = "search for movie..."
        searchViewController.searchBar.delegate = self
        searchViewController.searchBar.sizeToFit()
        
        //UIBarButtonsItems
        let personButton = UIBarButtonItem(image: UIImage(named: "person.fill"),
                                           style: .plain, target: self,
                                           action: #selector(personInfo))
        let collectonButton = UIBarButtonItem(image: UIImage(named: "bookmark"),
                                              style: .plain, target: self,
                                              action: #selector(collectionInfo))
        let settingButton = UIBarButtonItem(image: UIImage(named: "gearshape"),
                                            style: .plain, target: self, action:#selector(settingInfo))
    
        self.navigationItem.searchController = searchViewController
        self.navigationItem.rightBarButtonItems = [collectonButton,personButton]
        self.navigationItem.leftBarButtonItem = settingButton
    }
    
    //BarButtonEventTrigger
    @objc func personInfo(){
        
    }
    
    @objc func collectionInfo(){
        
    }
    
    @objc func settingInfo(){
        
    }
    
    //MARK:-setTableView
    private func setTableView(){
        homeView.tableView.delegate = self
        homeView.tableView.dataSource = self
    }
}

//MARK:-extensionForTableViewSettings
extension HomePageViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = sections[section]
        switch section{
        case .movie:
            return section.text
        case .film:
            return section.text
        case .collection:
            return section.text
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let homeSection = sections[indexPath.section]
        switch homeSection {
        case .movie:
            let movieCell = tableView.dequeueReusableCell(withIdentifier: HomePageTableViewCell.reuseIdentifier, for: indexPath) as! HomePageTableViewCell
            movieCell.collectionView.delegate = self
            movieCell.collectionView.dataSource = self
            
            return movieCell
        case .film:
            let filmCell = tableView.dequeueReusableCell(withIdentifier: HomePageTableViewCell.reuseIdentifier, for: indexPath) as! HomePageTableViewCell
            filmCell.collectionView.delegate = self
            filmCell.collectionView.dataSource = self
            
            return filmCell
            
        case .collection:
            let collectionCell = tableView.dequeueReusableCell(withIdentifier: HomePageTableViewCell.reuseIdentifier, for: indexPath) as! HomePageTableViewCell
            collectionCell.collectionView.delegate = self
            collectionCell.collectionView.dataSource = self
            
            return collectionCell
        }
    }
}

//MARK:-extensionForSearchings
extension HomePageViewController:UISearchResultsUpdating,UISearchBarDelegate{
    func updateSearchResults(for searchController: UISearchController) {
        
    }
}
