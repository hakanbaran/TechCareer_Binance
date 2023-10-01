//
//  CoinCell.swift
//  TechCareer_Binance
//
//  Created by Hakan Baran on 1.10.2023.
//

import UIKit

class CoinCell: UITableViewCell {

    static let identifier = "CoinTableViewCell"
    
    private let coinName: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.text = "SXPUSDT"
        label.textColor = .label
        return label
    }()
    
    private let uzunVadeli: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 10, weight: .regular)
        label.text = "Uzun Vadeli"
        label.textColor = .lightGray
        return label
    }()
    
    private let coinPrice: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.textAlignment = .right
        label.text = "0.4545"
        label.textColor = .label
        return label
    }()
    
    private let miniCoinPrice: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12, weight: .regular)
        label.textAlignment = .right
        label.text = "0.4545"
        label.textColor = .lightGray
        return label
    }()
    
    private let coinYuzde: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15, weight: .medium)
        label.text = "+%2,54"
        label.textAlignment = .center
        label.textColor = .white
        label.backgroundColor = UIColor(hex: "#2DBD85")
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 3
        return label
    }()
    
   
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(coinName)
        contentView.addSubview(uzunVadeli)
        contentView.addSubview(coinPrice)
        contentView.addSubview(miniCoinPrice)
        contentView.addSubview(coinYuzde)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let width = contentView.frame.width
        let height = contentView.frame.height
        
        coinName.frame = CGRect(x: width/25, y: height/5, width: width/3, height: height/2)
        uzunVadeli.frame = CGRect(x: width/25, y: height/2 + height/10, width: width/5, height: height/3)
        
        coinPrice.frame = CGRect(x: width/2+width/30, y: height/5, width: width/5, height: height/3)
        miniCoinPrice.frame = CGRect(x: width/2+width/30, y: height/5+height/3, width: width/5, height: height/3)
        
        
        coinYuzde.frame = CGRect(x: width-width/4, y: height/5, width: width/4.5, height: height/1.8)
        
        
        
    }
    
    public func configure(with name: String, price: String, yuzde: String ) {
        coinName.text = name
        coinPrice.text = price
        miniCoinPrice.text = price
        coinYuzde.text = yuzde
    }

}
