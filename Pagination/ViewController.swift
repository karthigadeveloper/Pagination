//
//  ViewController.swift
//  Pagination
//
//  Created by Karthiga on 02/03/24.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    private let apicaller = Apicaller()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    

    private let tableview: UITableView  = {
        let tableview = UITableView(frame: .zero, style: .grouped)
        tableview.register(UITableView.self, forCellReuseIdentifier: "cell")
        return tableview
    }()
    private var data = [String] ()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableview)
        tableview.dataSource = self
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        tableview = view.bounds
        
        apicaller.fetchData(compliation: { result in
            switch result{
            case.success(let data)
                self.data.append(<#T##newElement: String##String#>)
            }
        })
    }
    func small(){
        print("hi every one")
    }
}

