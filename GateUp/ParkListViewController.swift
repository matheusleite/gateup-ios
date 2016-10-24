//
//  ParkListViewController.swift
//  GateUp
//
//  Created by Matheus Leite on 24/10/16.
//  Copyright © 2016 Matheus Leite. All rights reserved.
//

import UIKit

class ParkListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var nearestParkButton: UIButton!
    @IBOutlet weak var parkListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        parkListTableView.delegate = self
        parkListTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Park List Table View
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "parkCell") as! ParkListTableViewCell
        
        cell.parkName.text = "Super Shopping"
        cell.parkDistance.text = "2 km"
        
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
