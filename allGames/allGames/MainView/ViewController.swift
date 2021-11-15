//
//  ViewController.swift
//  allGames
//
//  Created by Tonywilson Jesuraj on 15/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var listImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    
    @IBOutlet weak var gamesListCollectionView: UICollectionView! {
        didSet {
            gamesListCollectionView.dataSource = self
            gamesListCollectionView.delegate = self
            gamesListCollectionView.register(UINib(nibName: "GamesListCollectionViewCell", bundle: .main), forCellWithReuseIdentifier: "GamesListCollectionViewCell")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GamesListCollectionViewCell", for: indexPath) as! GamesListCollectionViewCell
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

      let padding: CGFloat = 25
      let collectionCellSize = collectionView.frame.size.width - padding

    return CGSize(width: collectionCellSize/2, height: 250)

     }
}
