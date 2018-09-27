//
//  ViewController.swift
//  Tabs
//
//  Created by Alumno on 25/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let site : [Site] = [Site(name: "Mount Fuji", description: "Los pepinillos son muy ricos", image:#imageLiteral(resourceName: "MountFuji")),
                         Site(name: "Itsukushima", description: "Los pepinillos son muy ricos", image:#imageLiteral(resourceName: "Itsukushima")),
                         Site(name: "Kinkaku-ji", description: "Los pepinillos son muy ricos", image:#imageLiteral(resourceName: "Kinkaku-ji")),
                         Site(name: "Kiyomizu-dera", description: "Los pepinillos son muy ricos", image:#imageLiteral(resourceName: "Kiyomizu-dera")),
                         Site(name: "Odaiba", description: "Los pepinillos son muy ricos", image:#imageLiteral(resourceName: "Odaiba"))]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return site.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellLugar") as! CeldaSite
        celda.lblLugar.text = site[indexPath.row].name
        celda.imgPlace.image = site[indexPath.row].image
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 93
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Sitios Turisticos"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetalleSitio" {
        }
    }
}

