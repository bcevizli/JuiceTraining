//
//  BenimSayfam.swift
//  juicetraining
//
//  Created by Adem Burak Cevizli on 13.01.2023.
//

import UIKit

class BenimSayfam: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let benimSayfamList: [String] = ["Programlarım", "Değişim Takibi", "Ağırlık Takibi", "Notlarım", "Kişisel Bilgiler"]
    let cellReuseIdentifier = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        
    }
    
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return self.benimSayfamList.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell: UITableViewCell = (self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell?)!
            
            // set the text from the data model
            cell.textLabel?.text = self.benimSayfamList[indexPath.row]
            
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            let vc = ProgramlarimViewController()
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }
    

