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
    var funFact: String?
    var capitalCityLabel: UILabel!
    var sizeLabel:  UILabel!
    var populationLabel:  UILabel!
    var currencyLabel: UILabel!
    var languageLabel: UILabel!
    var factLabel: UILabel!
    var countryFlag: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(descriptor: UIFontDescriptor(name: "PartyLetPlain", size: 40), size: 40)]
        
        title = "\(String(describing: countryName!))"
        
        view = UIView()
        view.backgroundColor = .white
        
        countryFlag = UIImageView()
        countryFlag.translatesAutoresizingMaskIntoConstraints = false
        countryFlag.image = UIImage(named: flagName!)
        view.addSubview(countryFlag)

        capitalCityLabel = UILabel()
        capitalCityLabel.translatesAutoresizingMaskIntoConstraints = false
        capitalCityLabel.textAlignment = .left
        capitalCityLabel.text = "Capital city: \(capitalCity!)"
        capitalCityLabel.font = UIFont(name: capitalCityLabel.font.fontName, size: 25)
        view.addSubview(capitalCityLabel)
        
        sizeLabel = UILabel()
        sizeLabel.translatesAutoresizingMaskIntoConstraints = false
        sizeLabel.textAlignment = .left
        sizeLabel.text = "Size: \(size!)"
        sizeLabel.font = UIFont(name: sizeLabel.font.fontName, size: 25)
        view.addSubview(sizeLabel)
        
        populationLabel = UILabel()
        populationLabel.translatesAutoresizingMaskIntoConstraints = false
        populationLabel.textAlignment = .left
        populationLabel.text = "Population: \(population!)"
        populationLabel.font = UIFont(name: populationLabel.font.fontName, size: 25)
        view.addSubview(populationLabel)
        
        currencyLabel = UILabel()
        currencyLabel.translatesAutoresizingMaskIntoConstraints = false
        currencyLabel.textAlignment = .left
        currencyLabel.text = "Currency: \(currency!)"
        currencyLabel.font = UIFont(name: currencyLabel.font.fontName, size: 25)
        view.addSubview(currencyLabel)
        
        languageLabel = UILabel()
        languageLabel.translatesAutoresizingMaskIntoConstraints = false
        languageLabel.textAlignment = .left
        languageLabel.text = "Language: \(language!)"
        languageLabel.font = UIFont(name: languageLabel.font.fontName, size: 25)
        view.addSubview(languageLabel)
        
        factLabel = UILabel()
        factLabel.translatesAutoresizingMaskIntoConstraints = false
        factLabel.textAlignment = .left
        factLabel.text = "Fun fact: \(funFact!)"
        factLabel.textAlignment = .justified
        factLabel.font = UIFont(name: factLabel.font.fontName, size: 25)
        factLabel.numberOfLines = 10
        view.addSubview(factLabel)
        
        NSLayoutConstraint.activate([
            countryFlag.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20),
            countryFlag.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            countryFlag.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            countryFlag.heightAnchor.constraint(equalToConstant: 250),
            capitalCityLabel.topAnchor.constraint(equalTo: countryFlag.bottomAnchor, constant: 20),
            capitalCityLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            sizeLabel.topAnchor.constraint(equalTo: capitalCityLabel.bottomAnchor, constant: 10),
            sizeLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            populationLabel.topAnchor.constraint(equalTo: sizeLabel.bottomAnchor, constant: 10),
            populationLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            currencyLabel.topAnchor.constraint(equalTo: populationLabel.bottomAnchor, constant: 10),
            currencyLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            languageLabel.topAnchor.constraint(equalTo: currencyLabel.bottomAnchor, constant: 10),
            languageLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            factLabel.topAnchor.constraint(equalTo: languageLabel.bottomAnchor, constant: 10),
            factLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            factLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            factLabel.widthAnchor.constraint(equalToConstant: 400),
        ])
        
        if countryName == "United States" ||  countryName == "Greece" || countryName == "France" {
            capitalCityLabel.setAttribute(searchText: "Capital city:", font: UIFont(name: "HoeflerText-Italic", size: 30)!, color: .blue)
            sizeLabel.setAttribute(searchText: "Size:", font: UIFont(name: "HoeflerText-Italic", size: 30)!, color: .blue)
            populationLabel.setAttribute(searchText: "Population:", font: UIFont(name: "HoeflerText-Italic", size: 30)!, color: .blue)
            currencyLabel.setAttribute(searchText: "Currency:", font: UIFont(name: "HoeflerText-Italic", size: 30)!, color: .blue)
            languageLabel.setAttribute(searchText: "Language:", font: UIFont(name: "HoeflerText-Italic", size: 30)!, color: .blue)
            factLabel.setAttribute(searchText: "Fun fact:", font: UIFont(name: "HoeflerText-Italic", size: 30)!, color: .blue)
        }
        
        if countryName == "Italy" {
            capitalCityLabel.setAttribute(searchText: "Capital city:", font: UIFont(name: "HoeflerText-Italic", size: 30)!, color: .green)
            sizeLabel.setAttribute(searchText: "Size:", font: UIFont(name: "HoeflerText-Italic", size: 30)!, color: .green)
            populationLabel.setAttribute(searchText: "Population:", font: UIFont(name: "HoeflerText-Italic", size: 30)!, color: .green)
            currencyLabel.setAttribute(searchText: "Currency:", font: UIFont(name: "HoeflerText-Italic", size: 30)!, color: .green)
            languageLabel.setAttribute(searchText: "Language:", font: UIFont(name: "HoeflerText-Italic", size: 30)!, color: .green)
            factLabel.setAttribute(searchText: "Fun fact:", font: UIFont(name: "HoeflerText-Italic", size: 30)!, color: .green)
        }
        
        if countryName == "Spain" {
            capitalCityLabel.setAttribute(searchText: "Capital city:", font: UIFont(name: "HoeflerText-Italic", size: 30)!, color: .red)
            sizeLabel.setAttribute(searchText: "Size:", font: UIFont(name: "HoeflerText-Italic", size: 30)!, color: .red)
            populationLabel.setAttribute(searchText: "Population:", font: UIFont(name: "HoeflerText-Italic", size: 30)!, color: .red)
            currencyLabel.setAttribute(searchText: "Currency:", font: UIFont(name: "HoeflerText-Italic", size: 30)!, color: .red)
            languageLabel.setAttribute(searchText: "Language:", font: UIFont(name: "HoeflerText-Italic", size: 30)!, color: .red)
            factLabel.setAttribute(searchText: "Fun fact:", font: UIFont(name: "HoeflerText-Italic", size: 30)!, color: .red)
        }
        
    }
}
