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
        label.text = "0.4545"
        label.textColor = .label
        return label
    }()
    
    private let miniCoinPrice: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 10, weight: .regular)
        label.text = "0.4545"
        label.textColor = .lightGray
        return label
    }()
    
    private let coinYuzde: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 10, weight: .regular)
        label.text = "+%2,54"
        label.textColor = .white
        label.backgroundColor = UIColor(hex: "#2DBD85")
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
        
        coinName.frame = CGRect(x: 0, y: 0, width: width/5, height: height/2)
        uzunVadeli.frame = CGRect(x: 0, y: height/2 + height/10, width: width/5, height: height/3)
        
    }
    
    public func configure(with model: String) {
        coinName.text = model
    }

}
