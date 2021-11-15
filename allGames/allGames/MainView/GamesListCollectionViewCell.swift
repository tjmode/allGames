//
//  GamesListCollectionViewCell.swift
//  allGames
//
//  Created by Tonywilson Jesuraj on 15/11/21.
//

import UIKit

class GamesListCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var baseView: UIView! {
        didSet {
            baseView.layer.cornerRadius = 10
            baseView.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var baseImage: UIImageView! {
        didSet {
            baseImage.image = UIImage(named: "pic")
        }
    }
}
