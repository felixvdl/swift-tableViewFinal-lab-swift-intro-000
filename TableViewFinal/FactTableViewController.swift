//
//  FactTableViewController.swift
//  TableViewFinal
//
//  Created by James Campagno on 6/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class FactTableViewController: UITableViewController {
    let factCellIdentifier: String = "FactCell"
    var planet: Planet!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        title = planet.name
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return planet.facts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let theCell = tableView.dequeueReusableCell(withIdentifier: "FactCell", for: indexPath) as! FactTableViewCell
        
        let fact = planet.facts[indexPath.row]
        
        theCell.factTextView.text = fact
        
        
        return theCell
    }
    
}
