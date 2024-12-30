//
//  ViewController.swift
//  GeovisEarthKit
//
//  Created by kevinxuelei on 12/30/2024.
//  Copyright (c) 2024 kevinxuelei. All rights reserved.
//

import UIKit
import GeovisEarthSDK
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        GeovisMapSdk.init(appKey: "", appSecret: "", disableLog: true)
        setupUI();
        
   
        // Do any additional setup after loading the view, typically from a nib.
    }
    func setupUI() {
        view.addSubview(mapView)
    }
    
    lazy var mapView: GeovisMapView  = {
        
        let view = GeovisMapView.init(frame: self.view.bounds)
        let model = RasterLayerModel()
        model.tileSize = 18
        view.addGeovisImageLayer(rasterLayerModel: model)
        return view
    }()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

