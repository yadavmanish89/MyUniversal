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
        /*
        let tableHeaderLabel:UILabel = UILabel(frame:CGRect(origin: CGPoint(x:0, y:0), size: CGSize(width:50, height:20)))
        tableHeaderLabel.text = "HEAD"
        tableHeaderLabel.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        tableView.tableHeaderView = tableHeaderLabel
        
        let tableFooterLabel:UILabel = UILabel(frame:CGRect(origin: CGPoint(x:0, y:0), size: CGSize(width:50, height:20)))
        tableFooterLabel.text = "FOOT"
        tableFooterLabel.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        tableView.tableFooterView = tableFooterLabel
        */
//        self.tableView.register(CountryTableViewCell.self, forCellReuseIdentifier: "CountryTableViewCell")
//    self.tableView.register(UINib(nibName: "CountryTableViewCell", bundle: nil), forCellReuseIdentifier: "myCell")
    }
    //MARK: Table Delegates
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
        
        var cell:CountryTableViewCell = tableView.dequeueReusableCell(withIdentifier: "CountryTableViewCell") as! CountryTableViewCell
//        var cell:CountryTableViewCell = tableView.dequeueReusableCell(withIdentifier: "CountryTableViewCell", for: indexPath) as! CountryTableViewCell//tableView.dequeueReusableCellWithIdentifier("CountryTableViewCell", forIndexPath: indexPath) as! CountryTableViewCell

        if (cell.isEqual(nil)) {
            cell = CountryTableViewCell.init(style:.default, reuseIdentifier: "CountryTableViewCell")
        }
        
        if(indexPath.section == 0){
            cell.countryLabel?.text = "Hello"
        }
        else{
            cell.countryLabel?.text = "Hey"
        }
        cell.countryImageView.image = UIImage(named:"usa_map.png")
        let sum1  = add(firstNumber: indexPath.section, secondNumber: indexPath.row)
        
        let sum2 = add(x: indexPath.row, y: indexPath.section)
//        NSLog("sum is %d and %d", sum1, sum2)
        return cell
    }
    
    func add(firstNumber x:NSInteger,secondNumber y:NSInteger) -> NSInteger {
        
        return x + y
    }
    func add(x:NSInteger,y:NSInteger) -> NSInteger {
        
        return x + y
    }
    
    @IBAction func refreshButtonAction(_ sender: UIBarButtonItem) {
        tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//extension ViewController: UITableViewDataSource, UITableViewDelegate{
//    
//}

