//
//  ViewController.swift
//  haaaaJotGotNe
//
//  Created by 이용수 on 2023/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView_custom: UITableView!
    let cellName: String = "customCell"
    let cellTitle : Array<String> = ["pencil.circle", "doc.circle", "bolt.circle"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView_custom.delegate = self
        tableView_custom.dataSource = self
      
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView_custom.dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! CustomCell
        
        customCell.imageView_custom.image = UIImage(systemName: cellTitle[indexPath.row])
        customCell.label_custom.text = cellTitle[indexPath.row]
        
        return customCell
    }
    
    
}
