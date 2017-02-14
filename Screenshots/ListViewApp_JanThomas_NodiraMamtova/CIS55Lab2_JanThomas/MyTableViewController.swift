//
//  MyTableViewController.swift
//  CIS55Lab2_JanThomas
//
//  Created by Jan on 2/3/17.
//  Copyright © 2017 DeAnza. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    var HikingLocations = ["Point Reyes National Seashore", "Big Basin Redwoods State Park", "Tilden Regional Park", "San Francisco", "Muir Beach", "Oakland", "Berkeley", "Mount Tamalpais State Park", "Fremont", "Napa", "Tiburon", "San Jose", "Lake Berryessa", "Pacifica", "Sunol Regional Wilderness", "Portola Valley", "Redwood Regional Park", "Santa Cruz Mountains", "Montara", "Sinson Beach"]
    var HikingImages = [#imageLiteral(resourceName: "PointReyes"), #imageLiteral(resourceName: "BigBasin"), #imageLiteral(resourceName: "Tilden Park"), #imageLiteral(resourceName: "San Francisco"), #imageLiteral(resourceName: "MuirBeach"), #imageLiteral(resourceName: "Oakland"), #imageLiteral(resourceName: "Berkeley"), #imageLiteral(resourceName: "MountTamalpais"), #imageLiteral(resourceName: "Fremont"), #imageLiteral(resourceName: "Napa"), #imageLiteral(resourceName: "Tiburon"), #imageLiteral(resourceName: "SanJose"), #imageLiteral(resourceName: "LakeBerryessa"), #imageLiteral(resourceName: "Pacifica"), #imageLiteral(resourceName: "Sunol"), #imageLiteral(resourceName: "PortolaValley"), #imageLiteral(resourceName: "Redwood"), #imageLiteral(resourceName: "SantaCruz"), #imageLiteral(resourceName: "Montara"), #imageLiteral(resourceName: "StinsonBeach") ]
    var HikingDetail = [
        "71,000-acre park boasts a visitor center, hiking trails, expansive beaches & panoramic water views.",
        "California's oldest state park offers backpacking, mountain biking & other outdoor activities.",
        "A 2,000+ acre park with a carousel, botanic garden, lake swimming, picnic areas & steam train ride.",
        "San Francisco, in northern California, is a hilly city on the tip of a peninsula surrounded by the Pacific Ocean and San Francisco Bay.",
        "Muir Beach is a census designated place, unincorporated community, and beach that is located 16.5 miles northwest of San Francisco in western Marin County, California, United States. It is named for John Muir. The population was 310 at the 2010 census. The community itself flanks the northwest side of the beach. Located about 2 miles from the entrance to Muir Woods National Monument.",
        "Oakland is the largest city and the county seat of Alameda County, California, United States. A major West Coast port city, Oakland is the largest city in the East Bay region of the San Francisco Bay Area, the third largest city overall in the San Francisco Bay Area.",
        "Berkeley is a city in Northern California on the east side of San Francisco Bay. It’s home to the University of California, Berkeley, birthplace of the 1960s Free Speech Movement. The 1914 Sather Tower, known as the Campanile, has views of the campus and the bay.",
        "Redwood groves plus hiking & biking trails that lead to sweeping views from a 2,571-foot peak.",
        "Fremont is a city in Alameda County, California, western United States. It was incorporated on January 23, 1956, from the merger of five smaller communities: Centerville, Niles, Irvington, Mission San Jose, and Warm Springs.",
        "Napa is the seat of Napa County, California, in the heart of the Napa Valley wine region. Its downtown is known for late-1800s and early-1900s architecture, a riverfront promenade with shops and restaurants, and an arts scene anchored by the Napa Valley Opera House.",
        "Tiburon is an incorporated town in Marin County, California. It is located on the Tiburon Peninsula, which reaches south into the San Francisco Bay. The smaller city of Belvedere occupies the south-west part of the peninsula and is contiguous with Tiburon.",
        "San Jose is a large city surrounded by rolling hills in Silicon Valley, a major technology hub in California's Bay Area. The downtown historic district is known for its architectural landmarks, from the 1883 Italianate-style Oddfellows building to Spanish Colonial Revival structures.",
        "Lake Berryessa is the largest lake in Napa County, California. This reservoir in the Vaca Mountains is formed by the Monticello Dam, which provides water and hydroelectricity to the North Bay region of the San Francisco Bay Area.",
        "Pacifica is a city in San Mateo County, California, on the coast of the Pacific Ocean between San Francisco and Half Moon Bay.",
        "6,859-acre park with varied terrain & a scenic gorge for hiking, swimming, camping & more.",
        "Portola Valley is an incorporated town in San Mateo County, California, United States. It was named for Spanish explorer Gaspar de Portolá, who led the first party of Europeans to explore the San Francisco Peninsula in 1769. The population was 4,353 at the 2010 census.",
        "Sprawling forest featuring redwood groves & rare wildlife, plus trails, picnic areas & campsites.",
        "The Santa Cruz Mountains, part of the Pacific Coast Ranges, are a mountain range in central and northern California, United States.",
        "Montara is a census-designated place in San Mateo County, California, United States. The population was 2,909 at the 2010 census. Nearby communities include Moss Beach and Princeton-by-the-Sea. Wikipedia",
        "Stinson Beach is a census-designated place in Marin County, California, on the west coast of the United States. Stinson Beach is located 2.5 miles east-southeast of Bolinas, at an elevation of 26 feet."
        ]
    var HikingChecked = [false, false, false, false, false, false, false, false, false, false,false, false, false, false, false,false, false, false, false, false]
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        print ("HikingLocation: \(HikingLocations.count)")
        return HikingLocations.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cellIdentifier = "HikingCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! MyTableViewCell
        
        // Configure the cell...
        cell.cellItemName?.text = HikingLocations[indexPath.row]
        cell.cellImage?.image = HikingImages[indexPath.row]
        //cell.cellTimeName?.text = HikingDetail[indexPath.row]
        
        if HikingChecked[indexPath.row] {
            
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
        
        HikingChecked[indexPath.row] = !(HikingChecked[indexPath.row])
        
        if HikingChecked[indexPath.row] {
            
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
        return true
    }

   
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            HikingLocations.remove(at: indexPath.row)
            HikingDetail.remove(at: indexPath.row)
            HikingImages.remove(at: indexPath.row)
            HikingChecked.remove(at: indexPath.row)
            
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
                
                detailVC.LabelItemText = HikingLocations[indexPath.row]
                detailVC.LabelDetailText = HikingDetail[indexPath.row]
                detailVC.ImageItemFile = HikingImages[indexPath.row]
            }
        }
    }

}
