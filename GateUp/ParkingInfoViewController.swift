//
//  ParkingInfoViewController.swift
//  GateUp
//
//  Created by Matheus Leite on 18/11/16.
//  Copyright © 2016 Matheus Leite. All rights reserved.
//

import UIKit

class ParkingInfoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var parkingsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        parkingsTableView.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Parking.sharedInstance.parkings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = parkingsTableView.dequeueReusableCell(withIdentifier: "parkInfoCell") as! ParkInfoTableViewCell
        
        
        let park = Parking.sharedInstance.parkings[indexPath.row]
        cell.parkName.text = park.name
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
