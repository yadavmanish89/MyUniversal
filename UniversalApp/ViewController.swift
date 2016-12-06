//
//  ViewController.swift
//  UniversalApp
//
//  Created by Yadav, Manish on 11/30/16.
//  Copyright © 2016 Yadav, Manish. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let tableHeaderLabel:UILabel = UILabel(frame:CGRect(origin: CGPoint(x:0, y:0), size: CGSize(width:50, height:20)))
        tableHeaderLabel.text = "HEAD"
        tableHeaderLabel.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        tableView.tableHeaderView = tableHeaderLabel
        
        let tableFooterLabel:UILabel = UILabel(frame:CGRect(origin: CGPoint(x:0, y:0), size: CGSize(width:50, height:20)))
        tableFooterLabel.text = "FOOT"
        tableFooterLabel.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        tableView.tableFooterView = tableFooterLabel

    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 35
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if(section == 0){
            return "Header One"
        }
        return "Header Two"
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell(style:UITableViewCellStyle.subtitle, reuseIdentifier:"myCell")
        if(indexPath.section == 0){
            cell.textLabel?.text = "Hello"
        }
        else{
            cell.textLabel?.text = "Hey"
        }
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//extension ViewController: UITableViewDataSource, UITableViewDelegate{
//    
//}

