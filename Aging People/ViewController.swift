//
//  ViewController.swift
//  Aging People
//
//  Created by Jihun Kang on 1/11/18.
//  Copyright © 2018 Jihun Kang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var people = ["George", "Betty", "Fran", "Joe", "Helda", "Winifred", "Zed", "Sara", "Jeffy", "Abraham", "Anna", "Melinda"]
    
    @IBOutlet weak var peopleTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        peopleTable.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = people[indexPath.row]
        cell.detailTextLabel?.text = String(arc4random_uniform(95)+1)
        return cell
    }
}
