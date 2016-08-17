//
//  ViewController.swift
//  IosCharts
//
//  Created by Trinity on 16/8/17.
//  Copyright © 2016年 Trinity. All rights reserved.
//

import UIKit
import Charts

class ViewController: UIViewController {
    
    @IBOutlet weak var barChart: BarChartView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let unitsSold = [1.2, 2.3, 3.4, 4.5, 5.6, 2.3]
        let months : [NSObject] = ["Jan", "Feb", "Mar", "Apr", "May", "Jun"]
        var idx = 0
        let dataEntries = unitsSold.map { (value) -> BarChartDataEntry in
            let entry = BarChartDataEntry(value: value, xIndex: idx)
            idx = idx + 1
            return entry
        }
        
        let dataSet = BarChartDataSet(yVals: dataEntries, label: "aklsjkfld")
        
        print(dataSet is IChartDataSet)
    }
}

