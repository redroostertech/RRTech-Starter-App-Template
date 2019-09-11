//
//  LayoutManager.swift
//
//  Created by Michael Westbrooks on 8/12/19.
//  Copyright © 2019 RedRooster Technologies Inc. All rights reserved.
//
import Foundation
import UIKit

/**
 `LayoutManager` provides setup and configuration for providing various vertical flow styles for UICollectionView

 The design philosophy is to mimic the grid layout found in Bootstrap CSS templates.

 - To adjust sizes for cells, go to 'Configuration.swift' and adjust kCollectionPrimaryCellHeight or kCollectionSecondaryCellHeight values
 - To adjust spacing for cells, go to 'Configurtion.swift' and adjust kPrimarySpacing value
 */

public class LayoutManager {
    // MARK: - Vertical flows
    public struct vertical {
      public static var one_col_margin: UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: kWidthOfScreen - (kInsets + (kInsets / 2)),
                                 height: kCollectionPrimaryCellHeight)
        layout.minimumLineSpacing = kPrimarySpacing
        layout.minimumInteritemSpacing = kPrimarySpacing
        layout.sectionInset = UIEdgeInsets(top: kInsets,
                                           left: kInsets,
                                           bottom: kInsets,
                                           right: kInsets)
        return layout
      }

      public static var one_col_no_margin: UICollectionViewFlowLayout {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        flowLayout.minimumLineSpacing = kPrimaryNoSpacing
        flowLayout.minimumInteritemSpacing = kPrimaryNoSpacing
        flowLayout.itemSize = CGSize(width: kWidthOfScreen,
                                     height: kCollectionPrimaryCellHeight)
        return flowLayout
      }


      public static var two_col_margin: UICollectionViewFlowLayout {
          let layout = UICollectionViewFlowLayout()
          layout.scrollDirection = .vertical
          layout.itemSize = CGSize(width: (kWidthOfScreen / 2) - (kInsets + (kInsets / 2)),
                                   height: kCollectionPrimaryCellHeight)
          layout.minimumLineSpacing = kPrimarySpacing
          layout.minimumInteritemSpacing = kPrimarySpacing
          layout.sectionInset = UIEdgeInsets(top: kInsets,
                                             left: kInsets,
                                             bottom: kInsets,
                                             right: kInsets)
          return layout
      }

      public static var two_col_no_margin: UICollectionViewFlowLayout {
          let flowLayout = UICollectionViewFlowLayout()
          flowLayout.scrollDirection = .vertical
          flowLayout.minimumLineSpacing = kPrimaryNoSpacing
          flowLayout.minimumInteritemSpacing = kPrimaryNoSpacing
          flowLayout.itemSize = CGSize(width: kWidthOfScreen / 2,
                                       height: kCollectionPrimaryCellHeight)
          return flowLayout
      }

      public static var three_col_margin: UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: (kWidthOfScreen / 3) - (kInsets + (kInsets / 3)),
                                 height: kCollectionPrimaryCellHeight)
        layout.minimumLineSpacing = kPrimarySpacing
        layout.minimumInteritemSpacing = kPrimarySpacing
        layout.sectionInset = UIEdgeInsets(top: kInsets,
                                           left: kInsets,
                                           bottom: kInsets,
                                           right: kInsets)
        layout.headerReferenceSize = CGSize(width: kWidthOfScreen,
                                            height: 50.0)
        layout.footerReferenceSize = CGSize(width: kWidthOfScreen,
                                            height: 50.0)
        return layout
      }

      public static var three_col_margin_no_header_footer: UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: (kWidthOfScreen / 3) - (kInsets + (kInsets / 3)),
                                 height: kCollectionPrimaryCellHeight)
        layout.minimumLineSpacing = kPrimarySpacing
        layout.minimumInteritemSpacing = kPrimarySpacing
        layout.sectionInset = UIEdgeInsets(top: kInsets,
                                           left: kInsets,
                                           bottom: kInsets,
                                           right: kInsets)
        return layout
      }
    }

    // MARK: - Horizontal flows
    public struct horizontal {
      public static var sm_col_no_margin: UICollectionViewFlowLayout {
          let flowLayout = UICollectionViewFlowLayout()
          flowLayout.scrollDirection = .horizontal
          flowLayout.itemSize = CGSize(width: kCollectionSecondaryCellWidth / 2,
                                       height: kCollectionPrimaryCellHeight / 2)
          return flowLayout
      }

      public static var md_col_no_margin: UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: kCollectionSecondaryCellWidth,
                                 height: kCollectionPrimaryCellHeight)
        return layout
      }

      public static var fullscreen_col_no_margin: UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: kWidthOfScreen,
                                 height: kCollectionPrimaryCellHeight)
        return layout
      }

      public static var sm_col_margin: UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: kCollectionPrimaryCellWidth / 2,
                                 height: kCollectionPrimaryCellHeight / 2)
        layout.minimumInteritemSpacing = kPrimarySpacing
        layout.minimumLineSpacing = kPrimarySpacing
        return layout
      }

      public static var md_col_margin: UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: kCollectionPrimaryCellWidth,
                                 height: kCollectionPrimaryCellHeight)
        layout.minimumInteritemSpacing = kPrimarySpacing
        layout.minimumLineSpacing = kPrimarySpacing
        return layout
      }

      public static var fullscreen_col_margin: UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: kWidthOfScreen,
                                 height: kCollectionPrimaryCellHeight)
        layout.minimumInteritemSpacing = kPrimarySpacing
        layout.minimumLineSpacing = kPrimarySpacing
        return layout
      }
    }
}
