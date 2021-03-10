//
//  ViewController.swift
//  Milestone Project 5
//
//  Created by Carmen Morado on 1/26/21.
//

import UIKit

class ViewController: UITableViewController {
    var countries = [Country]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(descriptor: UIFontDescriptor(name: "PartyLetPlain", size: 40), size: 40)]
        
        title = "Countries"

        let url = Bundle.main.url(forResource: "Countries", withExtension: "json")!
                
        if let data = try? Data(contentsOf: url) {
            parse(json: data)
            return
        }
    }
        
    func parse(json: Data) {
        let decoder = JSONDecoder()

        if let jsonPetitions = try? decoder.decode(Countries.self, from: json) {
            countries = jsonPetitions.results
            tableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Country", for: indexPath)
        let country = countries[indexPath.row]
        cell.textLabel?.text = country.countryName
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            let country = countries[indexPath.row]
            vc.countryName = country.countryName
            vc.capitalCity = country.capitalCity
            vc.size = country.size
            vc.population = country.population
            vc.currency = country.currency
            vc.language = country.language
            vc.flagName = country.flagName
            vc.funFact = country.funFact
            navigationController?.pushViewController(vc, animated: true)
        }
    }


}

