//
//  ViewController.swift
//  TechCareer_Binance
//
//  Created by Hakan Baran on 1.10.2023.
//

import UIKit


struct Coin {
    let name: String?
    let price: String?
    let yuzde: String?
}


class HomePage: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var coinArray = [Coin]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(CoinCell.self, forCellReuseIdentifier: CoinCell.identifier)
        tableView.separatorStyle = .none
        
        coinArrayAppand()
    }
    
    func coinArrayAppand() {
        
        let coin1 = Coin(name: "BTCUSDT", price: "27.115,51", yuzde: "+%0,70")
        let coin2 = Coin(name: "ETHUSDT", price: "1.678,83", yuzde: "+%0,39")
        let coin3 = Coin(name: "1INCHUSDT", price: "0,2704", yuzde: "+%0,71")
        let coin4 = Coin(name: "KAVAUSDT", price: "0,638", yuzde: "+%1.43")
        let coin5 = Coin(name: "SXPUSDT", price: "0,2904", yuzde: "+%0,94")
        let coin6 = Coin(name: "COMPUSDT", price: "47.39", yuzde: "+1.76")
        
        coinArray.append(coin1)
        coinArray.append(coin2)
        coinArray.append(coin3)
        coinArray.append(coin4)
        coinArray.append(coin5)
        coinArray.append(coin6)
    }
}

extension HomePage: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.height/6
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coinArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CoinCell.identifier, for: indexPath) as? CoinCell else {
            return UITableViewCell()
        }
        
        
        let model = coinArray[indexPath.row]
        
        cell.configure(with: model.name ?? "", price: model.price ?? "", yuzde: model.yuzde ?? "")
        
        return cell
    }
    
    
}

