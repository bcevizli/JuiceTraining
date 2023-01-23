//
//  ProgramlarimViewController.swift
//  juicetraining
//
//  Created by Adem Burak Cevizli on 23.01.2023.
//

import UIKit

class ProgramlarimViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var programlarimTableView: UITableView!
    private let tableView = UITableView()
    private let size : CGFloat = 200
    let programList: [String] = ["Benim Programım", "Mobility", "Lifting", "Stretching", "Kişisel Bilgiler"]
    let cellReuseIdentifier = "cell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
          
//        programlarimTableView?.delegate = self
//        programlarimTableView?.dataSource = self
        view.addSubview(tableView)
        
        tableView.frame = CGRect(x: 0, y: 0, width: size, height: size)
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.center = view.center
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.programList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = (self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell?)!
        
        cell.textLabel?.text = self.programList[indexPath.row]
        
        return cell
    }
  
        
       
    

   

}
