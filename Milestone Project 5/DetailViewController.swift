//
//  DetailViewController.swift
//  Milestone Project 5
//
//  Created by Carmen Morado on 3/1/21.
//

import UIKit

class DetailViewController: UIViewController {
    var countryName: String?
    var capitalCity: String?
    var size:  String?
    var population:  String?
    var currency: String?
    var language: String?
    var flagName: String?
    var capitalcityLabel: UILabel!
    var sizeLabel:  UILabel!
    var populationLabel:  UILabel!
    var currencyLabel: UILabel!
    var languageLabel: UILabel!
    var countryFlag: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(String(describing: countryName!))"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        view = UIView()
        view.backgroundColor = .white
        
        countryFlag = UIImageView()
        countryFlag.translatesAutoresizingMaskIntoConstraints = false
        countryFlag.image = UIImage(named: flagName!)
        view.addSubview(countryFlag)

        capitalcityLabel = UILabel()
        capitalcityLabel.translatesAutoresizingMaskIntoConstraints = false
        capitalcityLabel.textAlignment = .left
        capitalcityLabel.text = "Capital city: \(capitalCity!)"
        view.addSubview(capitalcityLabel)
        
        sizeLabel = UILabel()
        sizeLabel.translatesAutoresizingMaskIntoConstraints = false
        sizeLabel.textAlignment = .left
        sizeLabel.text = "Size: \(size!)"
        view.addSubview(sizeLabel)
        
        populationLabel = UILabel()
        populationLabel.translatesAutoresizingMaskIntoConstraints = false
        populationLabel.textAlignment = .left
        populationLabel.text = "Population: \(population!)"
        view.addSubview(populationLabel)
        
        currencyLabel = UILabel()
        currencyLabel.translatesAutoresizingMaskIntoConstraints = false
        currencyLabel.textAlignment = .left
        currencyLabel.text = "Currency: \(currency!)"
        view.addSubview(currencyLabel)
        
        languageLabel = UILabel()
        languageLabel.translatesAutoresizingMaskIntoConstraints = false
        languageLabel.textAlignment = .left
        languageLabel.text = "Language: \(language!)"
        view.addSubview(languageLabel)
        
        NSLayoutConstraint.activate([
            countryFlag.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            countryFlag.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            countryFlag.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            countryFlag.heightAnchor.constraint(equalToConstant: 250),
            capitalcityLabel.topAnchor.constraint(equalTo: countryFlag.bottomAnchor, constant: 20),
            capitalcityLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            sizeLabel.topAnchor.constraint(equalTo: capitalcityLabel.bottomAnchor, constant: 10),
            sizeLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            populationLabel.topAnchor.constraint(equalTo: sizeLabel.bottomAnchor, constant: 10),
            populationLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            currencyLabel.topAnchor.constraint(equalTo: populationLabel.bottomAnchor, constant: 10),
            currencyLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            languageLabel.topAnchor.constraint(equalTo: currencyLabel.bottomAnchor, constant: 10),
            languageLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
        ])
    }
}
