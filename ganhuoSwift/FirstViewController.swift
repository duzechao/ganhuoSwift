//
//  FirstViewController.swift
//  ganhuoSwift
//
//  Created by zajo on 16/1/29.
//  Copyright © 2016年 dzc. All rights reserved.
//
import Foundation
import UIKit
import AlamofireObjectMapper
import Alamofire
import RxSwift
import RxCocoa

class FirstViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    var dataList:[ResultItem] = [];
    
    @IBOutlet weak var tb: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Alamofire.request(.GET, "http://gank.avosapps.com/api/data/iOS/20/2").responseObject{
            (response:Response<DataResult,NSError>) in
            let results = response.result.value?.results!
            self.dataList = results!
            self.tb.reloadData()

            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath:
            indexPath) as UITableViewCell
        // Configure the cell...
        let item = dataList[indexPath.row]
        cell.textLabel!.text = item.desc!
        cell.detailTextLabel!.text = "\(item.who!)  \(item.createdAt!)"
        return cell
    }


}

