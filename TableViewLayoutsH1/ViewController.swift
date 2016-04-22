//
//  ViewController.swift
//  TableViewLayoutsH1
//
//  Created by admin on 4/20/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var dataArray = ["TH", "US", "JP", "CN"]
    var myDataSource = [["A", "B", "C", "D", "E"], ["x", "y", "z"]]
    var detailSection0 = ["A":"เอครับผม", "B":"บีจ้าง", "C":"ซีแมว", "D":"ดีดอกดอก", "E":"อีอีอี"]
    var detailSection1 = ["x":"เอ็กเลย", "y":"วายแน่นอน", "z":"ซีแซต"]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return myDataSource.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myDataSource[section].count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        /*
        let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as? Menu1TableViewCell
        cell0?.lblName.text = dataArray[indexPath.row]
        return cell0!
        */
        let data = myDataSource[indexPath.section][indexPath.row]
        let detail:String?
        
        if indexPath.section == 0 {
            detail = detailSection0[data]!
        } else {
            detail = detailSection1[data]!
        }
        let cell0 = tableView.dequeueReusableCellWithIdentifier("tableCell0") as? Menu1TableViewCell
        
        cell0?.lblName.text = data
        
        return cell0!
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //return "Section"
        if section == 0 {
            return "Section Big"
        } else {
            return "Section Small"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

