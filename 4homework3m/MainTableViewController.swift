//
//  MainTableViewController.swift
//  4homework3m
//
//  Created by mavluda on 17/3/23.
//

import UIKit

class MainTableViewController: UITableViewController {

    var productList = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initData()
        
    }

    // MARK: - Table view data source

    func initData(){
        productList = [
            Product(id: 0, type: "Furniture", count: 785, image: "furniture",
                    details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                            roomType: "Office, Living Room",
                                            color: "Yellow" , material: "Textile, Velvet, Cotton",
                                            dimensions: "25.6 * 31.5 * 37.4 inches",
                                            weight: "20.3 Pounds", star: 5, price: "230 $") ),
            Product(id: 0, type: "KitchenWare", count: 7251, image: "kitchenware",
                   details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                           roomType: "Office, Living Room",
                                           color: "Yellow" , material: "Textile, Velvet, Cotton",
                                           dimensions: "25.6 * 31.5 * 37.4 inches",
                                           weight: "20.3 Pounds", star: 5, price: "230 $") ),
            Product(id: 0, type: "Reading Table", count: 7251, image: "readingtable",
                   details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                           roomType: "Office, Living Room",
                                           color: "Yellow" , material: "Textile, Velvet, Cotton",
                                           dimensions: "25.6 * 31.5 * 37.4 inches",
                                           weight: "20.3 Pounds", star: 5, price: "230 $") ),
            Product(id: 0, type: "Kitchen", count: 7251, image: "kitchen",
                   details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                           roomType: "Office, Living Room",
                                           color: "Yellow" , material: "Textile, Velvet, Cotton",
                                           dimensions: "25.6 * 31.5 * 37.4 inches",
                                           weight: "20.3 Pounds", star: 5, price: "230 $") ),
            Product(id: 0, type: "Kitchen", count: 7251, image: "kitchen2",
                   details: ProductDetails(name: "AbocoFur Modern Velvet Fabric Lazy Chair",
                                           roomType: "Office, Living Room",
                                           color: "Yellow" , material: "Textile, Velvet, Cotton",
                                           dimensions: "25.6 * 31.5 * 37.4 inches",
                                           weight: "20.3 Pounds", star: 5, price: "230 $") )
        ]

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return productList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomCell
        
        cell.setupCell(productList[indexPath.row].type, String(productList[indexPath.row].count), productList[indexPath.row].image)

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc: DetailViewController = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        vc.imageText = productList[indexPath.row].image
        vc.nameText = productList[indexPath.row].details.name
        vc.costText = productList[indexPath.row].details.price
        vc.roomTypeText = productList[indexPath.row].details.roomType
        vc.colorText = productList[indexPath.row].details.color
        vc.materialText = productList[indexPath.row].details.material
        vc.dimensionsText = productList[indexPath.row].details.dimensions
        vc.weightText = productList[indexPath.row].details.weight
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}
