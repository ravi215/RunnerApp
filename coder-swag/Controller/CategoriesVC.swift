//
//  ViewController.swift
//  coder-swag
//
//  Created by Ravi Bhooshan on 08/10/18.
//  Copyright © 2018 Ravi Bhooshan. All rights reserved.
//

import UIKit

class  CategoriesVC: UIViewController ,UITableViewDelegate , UITableViewDataSource {
  
    @IBOutlet weak var categoryTable: UITableView!
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataServices.instance.getCategories().count 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            let category = DataServices.instance.getCategories()[indexPath.row]
            cell.updateViews(category: category)
            return cell
        }
        else{
            return CategoryCell()
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }


}

