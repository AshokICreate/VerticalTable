//
//  VerticalCVC.swift
//  VerticalTable
//
//  Created by Ashok on 11/6/16.
//  Copyright © 2016 Ashok. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class VerticalCVC: UICollectionViewController {
    
    var highestIndividualScores = [Highest_Individual_Score]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        highestIndividualScores = (UIApplication.shared.delegate as! AppDelegate).highestIndividualScores
        
        collectionView?.isScrollEnabled = true
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using [segue destinationViewController].
     // Pass the selected object to the new view controller.
     }
     */
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return highestIndividualScores.count
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Int(highestIndividualScores[section].count)!
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CustomCell
        
        if indexPath.section == 0 {
            cell.backgroundColor = UIColor.darkGray
            cell.titleLabel.textColor = UIColor.white
            
            switch indexPath.row {
            case 0:
                cell.titleLabel.text = "Player"
            case 1:
                cell.titleLabel.text = "Opp"
            case 2:
                cell.titleLabel.text = "Runs"
            case 3:
                cell.titleLabel.text = "Balls"
            case 4:
                cell.titleLabel.text = "Strike Rate"
            case 5:
                cell.titleLabel.text = "Fours"
            case 6:
                cell.titleLabel.text = "Sixes"
            default: break
            }
        } else {
            cell.backgroundColor = UIColor.white
            cell.titleLabel.textColor = UIColor.black
            
            switch indexPath.row {
            case 0:
                cell.titleLabel.text = highestIndividualScores[indexPath.section].player
            case 1:
                cell.titleLabel.text = highestIndividualScores[indexPath.section].opp
            case 2:
                cell.titleLabel.text = highestIndividualScores[indexPath.section].runs
            case 3:
                cell.titleLabel.text = highestIndividualScores[indexPath.section].balls
            case 4:
                cell.titleLabel.text = highestIndividualScores[indexPath.section].strikeRate
            case 5:
                cell.titleLabel.text = highestIndividualScores[indexPath.section].fours
            case 6:
                cell.titleLabel.text = highestIndividualScores[indexPath.section].sixes
            default: break
            }
        }
        return cell
    }
    
    // MARK: UICollectionViewDelegate
    
    /*
     // Uncomment this method to specify if the specified item should be highlighted during tracking
     override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
     return true
     }
     */
    
    /*
     // Uncomment this method to specify if the specified item should be selected
     override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
     return true
     }
     */
    
    /*
     // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
     override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
     return false
     }
     
     override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
     return false
     }
     
     override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
     
     }
     */
    
}



