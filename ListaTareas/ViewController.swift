//
//  ViewController.swift
//  ListaTareas
//
//  Created by mac17 on 17/05/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    
    
    @IBOutlet weak var tableNotas: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableNotas.delegate=self
        tableNotas.dataSource=self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableNotas.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        celda.textLabel?.text="testing"
        celda.detailTextLabel?.text="subtesting"
        
        return celda
    }


}

