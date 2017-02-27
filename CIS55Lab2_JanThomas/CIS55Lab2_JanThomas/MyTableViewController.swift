//
//  MyTableViewController.swift
//  CIS55Lab2_JanThomas
//
//  Created by Jan on 2/3/17.
//  Copyright © 2017 DeAnza. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController, UISearchResultsUpdating {


    var MyHikingList = [ HikingListObject(hikingLocations: "Point Reyes National Seashore", hikingImages: #imageLiteral(resourceName: "PointReyes"), hikingDetail: "71,000-acre park boasts a visitor center, hiking trails, expansive beaches & panoramic water views.", hikingChecked: false)
    ,HikingListObject(hikingLocations: "Big Basin Redwoods State Park", hikingImages: #imageLiteral(resourceName: "BigBasin"), hikingDetail: "California's oldest state park offers backpacking, mountain biking & other outdoor activities.", hikingChecked: false)
    ,HikingListObject(hikingLocations: "Tilden Regional Park", hikingImages: #imageLiteral(resourceName: "Tilden Park"), hikingDetail: "A 2,000+ acre park with a carousel, botanic garden, lake swimming, picnic areas & steam train ride.", hikingChecked: false)
    ,HikingListObject(hikingLocations: "San Francisco", hikingImages: #imageLiteral(resourceName: "San Francisco"), hikingDetail: "San Francisco, in northern California, is a hilly city on the tip of a peninsula surrounded by the Pacific Ocean and San Francisco Bay.", hikingChecked: false)
    ,HikingListObject(hikingLocations: "Muir Beach", hikingImages: #imageLiteral(resourceName: "MuirBeach"), hikingDetail: "Muir Beach is a census designated place, unincorporated community, and beach that is located 16.5 miles northwest of San Francisco in western Marin County, California, United States. It is named for John Muir. The population was 310 at the 2010 census. The community itself flanks the northwest side of the beach. Located about 2 miles from the entrance to Muir Woods National Monument.", hikingChecked: false)
    ,HikingListObject(hikingLocations: "Oakland", hikingImages: #imageLiteral(resourceName: "Oakland"), hikingDetail: "Oakland is the largest city and the county seat of Alameda County, California, United States. A major West Coast port city, Oakland is the largest city in the East Bay region of the San Francisco Bay Area, the third largest city overall in the San Francisco Bay Area.", hikingChecked: false)
    ,HikingListObject(hikingLocations: "Berkeley", hikingImages: #imageLiteral(resourceName: "Berkeley"), hikingDetail: "Berkeley is a city in Northern California on the east side of San Francisco Bay. It’s home to the University of California, Berkeley, birthplace of the 1960s Free Speech Movement.The 1914 Sather Tower, known as the Campanile, has views of the campus and the bay.", hikingChecked: false)
    ,HikingListObject(hikingLocations: "Mount Tamalpais State Park", hikingImages: #imageLiteral(resourceName: "MountTamalpais"), hikingDetail: "Redwood groves plus hiking & biking trails that lead to sweeping views from a 2,571-foot peak.", hikingChecked: false )
    ,HikingListObject(hikingLocations: "Fremont", hikingImages: #imageLiteral(resourceName: "Fremont"), hikingDetail: "Fremont is a city in Alameda County, California, western United States. It was incorporated on January 23, 1956, from the merger of five smaller communities: Centerville, Niles, Irvington, Mission San Jose, and Warm Springs.", hikingChecked: false )
    ,HikingListObject(hikingLocations: "Napa", hikingImages: #imageLiteral(resourceName: "Napa"), hikingDetail: "Napa is the seat of Napa County, California, in the heart of the Napa Valley wine region. Its downtown is known for late-1800s and early-1900s architecture, a riverfront promenade with shops and restaurants, and an arts scene anchored by the Napa Valley Opera House.", hikingChecked: false)
    ,HikingListObject(hikingLocations: "Tiburon", hikingImages: #imageLiteral(resourceName: "Tiburon"), hikingDetail: "Tiburon is an incorporated town in Marin County, California. It is located on the Tiburon Peninsula, which reaches south into the San Francisco Bay. The smaller city of Belvedere occupies the south-west part of the peninsula and is contiguous with Tiburon.", hikingChecked: false)
    ,HikingListObject(hikingLocations: "San Jose", hikingImages: #imageLiteral(resourceName: "SanJose"), hikingDetail: "San Jose is a large city surrounded by rolling hills in Silicon Valley, a major technology hub in California's Bay Area. The downtown historic district is known for its architectural landmarks, from the 1883 Italianate-style Oddfellows building to Spanish Colonial Revival structures.", hikingChecked: false)
    ,HikingListObject(hikingLocations: "Lake Berryessa", hikingImages: #imageLiteral(resourceName: "LakeBerryessa"), hikingDetail: "", hikingChecked: false)
    ,HikingListObject(hikingLocations: "Pacifica", hikingImages: #imageLiteral(resourceName: "Pacifica"), hikingDetail: "Pacifica is a city in San Mateo County, California, on the coast of the Pacific Ocean between San Francisco and Half Moon Bay.", hikingChecked: false)
    ,HikingListObject(hikingLocations: "Sunol Regional Wilderness", hikingImages: #imageLiteral(resourceName: "Sunol"), hikingDetail: "6,859-acre park with varied terrain & a scenic gorge for hiking, swimming, camping & more.", hikingChecked: false)
    ,HikingListObject(hikingLocations: "Portola Valley", hikingImages: #imageLiteral(resourceName: "PortolaValley"), hikingDetail: "Portola Valley is an incorporated town in San Mateo County, California, U  nited States. It was named for Spanish explorer Gaspar de Portolá, who led the first party of Europeans to explore the San Francisco Peninsula in 1769. The population was 4,353 at the 2010 census.", hikingChecked: false)
    ,HikingListObject(hikingLocations: "Redwood Regional Park", hikingImages: #imageLiteral(resourceName: "Redwood"), hikingDetail: "Sprawling forest featuring redwood groves & rare wildlife, plus trails, picnic areas & campsites.", hikingChecked: false)
    ,HikingListObject(hikingLocations: "Santa Cruz Mountains", hikingImages: #imageLiteral(resourceName: "SantaCruz"), hikingDetail: "The Santa Cruz Mountains, part of the Pacific Coast Ranges, are a mountain range in central and northern California, United States.", hikingChecked: false)
    ,HikingListObject(hikingLocations: "Montara", hikingImages: #imageLiteral(resourceName: "Montara"), hikingDetail: "Montara is a census-designated place in San Mateo County, California, United States. The population was 2,909 at the 2010 census. Nearby communities include Moss Beach and Princeton-by-the-Sea. Wikipedia", hikingChecked: false)
    ,HikingListObject(hikingLocations: "Sinson Beach", hikingImages: #imageLiteral(resourceName: "StinsonBeach"), hikingDetail: "Stinson Beach is a census-designated place in Marin County, California, on the west coast of the United States. Stinson Beach is located 2.5 miles east-southeast of Bolinas, at an elevation of 26 feet.", hikingChecked: false)
]
 
    
    var searchController : UISearchController!
    var searchResults : [HikingListObject] = []
 
 
    //override var prefersStatusBarHidden: Bool {
    //    return true
    //}
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        
        // Add a searchController and searchBar to the app
        self.searchController = UISearchController(searchResultsController: nil)
        self.searchController.searchBar.sizeToFit()
        self.searchController.hidesNavigationBarDuringPresentation = false
        self.searchController.searchResultsUpdater = self
        self.searchController.dimsBackgroundDuringPresentation = false
        self.tableView.tableHeaderView = self.searchController.searchBar
    }

    override func viewDidAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print ("HikingLocation: \(MyHikingList.count)")
        
        if searchController.isActive {
            return searchResults.count
        }
        else {
            return MyHikingList.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cellIdentifier = "HikingCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MyTableViewCell
        
        var cellItem : HikingListObject
        if searchController.isActive {
            cellItem = searchResults[indexPath.row]
        }
        else {
            cellItem = MyHikingList[indexPath.row]
        }
        // Configure the cell...

        cell.cellItemName?.text = cellItem.hikingLocations
        cell.cellImage?.image = cellItem.hikingImages
        
        //Display a rounded image
        //cell.cellImage?.layer.cornerRadius = cell.cellImage.frame.size.width/8.0
        //cell.cellImage?.clipsToBounds = true
        //cell.cellImage?.layer.masksToBounds = true
        
        if (cellItem.hikingChecked) {
            cell.accessoryType = .checkmark
            print("Row checked: \(indexPath.row)")
            
        }
        else {
            cell.accessoryType = .none
            print("Row checked: \(indexPath.row)")
            
        }

   
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cellItem = searchController.isActive ? searchResults[indexPath.row] : MyHikingList[indexPath.row]
        cellItem.hikingChecked = !(cellItem.hikingChecked)
        
        if (cellItem.hikingChecked) {
            
            self.tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            print("Row checked: \(indexPath.row)")
            
        }
        else {
            self.tableView.cellForRow(at: indexPath)?.accessoryType = .none
            print("Row checked: \(indexPath.row)")
            
        }
        
    }


    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        
        if searchController.isActive {
            return false
        }
        else {
            return true
        }
    }

   
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            MyHikingList.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "ShowItemDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let detailVC = segue.destination as! MyDetailViewController
                
                detailVC.myHikingList = searchController.isActive ? searchResults[indexPath.row] : MyHikingList[indexPath.row]

            }
        }
        else if segue.identifier == "AddNewItem" {
            let addVC = segue.destination as! AddViewController
            addVC.newHikingItem = addData
        }
    }
    
    func addData(newItem : HikingListObject) {
        MyHikingList.append(newItem)
    }
    
    func filterContentForSearchText(searchText: String) {
        searchResults = MyHikingList.filter({ (hikingItem: HikingListObject) -> Bool in
            let nameMatch = hikingItem.hikingLocations.range(of: searchText, options: String.CompareOptions.caseInsensitive)
            return nameMatch != nil
        })
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        if let textToSearch = searchController.searchBar.text {
            filterContentForSearchText(searchText: textToSearch)
            tableView.reloadData()
        }
    }

}
