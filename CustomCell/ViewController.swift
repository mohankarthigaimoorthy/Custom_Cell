//
//  ViewController.swift
//  CustomCell
//
//  Created by Mohan K on 15/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Row: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Row.delegate = self
        Row.dataSource = self
        
        Row.rowHeight = 150
        
        Row.register(UINib(nibName: "SeaTableViewCell", bundle: nil), forCellReuseIdentifier: "SeaTableViewCell")
    }

    @IBAction func didClicksegu(_ sender: Any) {
        
        let second = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        navigationController?.pushViewController(second, animated: true)
        
        
    }
    
}

extension ViewController : UITableViewDelegate , UITableViewDataSource {
    
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection Row:Int) -> Int {
        return 10
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if  indexPath.row == 0 {
            
            let cell = Row.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
            
            cell.appleImage.image = UIImage(named: "image4")
            
            return cell
        }else {
            
            let cell = Row.dequeueReusableCell(withIdentifier: "SeaTableViewCell", for: indexPath) as! SeaTableViewCell
            
            cell.seaLabel.text = "Mohan"
            
            return cell
            
        }
        return UITableViewCell()
    }
    
    
    
}
