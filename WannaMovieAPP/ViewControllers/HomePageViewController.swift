//
//  HomePageViewController.swift
//  WannaMovieAPP
//
//  Created by Jhen Mu on 2022/1/12.
//

import UIKit

class HomePageViewController: UIViewController{
    
    //MARK:-Properties
    let searchViewController = UISearchController(searchResultsController:SearchResultViewController())
    
    let homeView = HomePageView()
    
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
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        return cell
    }
    
    
    
}

//MARK:-extensionForSearchings
extension HomePageViewController:UISearchResultsUpdating,UISearchBarDelegate{
    func updateSearchResults(for searchController: UISearchController) {
        <#code#>
    }
}
