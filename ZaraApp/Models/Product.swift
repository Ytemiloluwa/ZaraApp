//
//  Product.swift
//  ZaraApp
//
//  Created by Temiloluwa on 02/01/2023.
//

import Foundation

struct Product: Identifiable {
    
    var id = UUID().uuidString
    var mainImage: String
    var images: [String]
    var title: String
    var description: String
    var price: String
    var isFull: Bool
    var isNew: Bool
    
    static var men: [Product] {
        let data = [
            "Denim":
                [
                    "https://images.unsplash.com/photo-1588544622467-6df9eef29c7a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=20",
                    "https://images.unsplash.com/photo-1541840031508-326b77c9a17e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=20",
                    "https://images.unsplash.com/flagged/photo-1573550398269-6600a22ffdae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1211&q=20",
                    "https://images.unsplash.com/photo-1566612088151-a477d6c17708?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=20",
                    "https://images.unsplash.com/photo-1580420885700-69f974d32374?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80"
                ]
            ,
            "Jackets":
                [
                    "https://images.unsplash.com/photo-1543076447-215ad9ba6923?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2167&q=20",
                    "https://images.unsplash.com/photo-1524601885886-1bdd86a02f5a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=20",
                    "https://images.unsplash.com/photo-1518621888950-386251586966?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=20",
                    "https://images.unsplash.com/photo-1516756587022-7891ad56a8cd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=20",
                    "https://images.unsplash.com/photo-1530651844286-ea8a1029c53d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1300&q=20"
                ],
            "Shirts":
                [
                    "https://images.unsplash.com/flagged/photo-1564468781192-f023d514222d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=20",
                    "https://images.unsplash.com/photo-1573766713733-18f875c7892d?ixlib=rb-1.2.1&auto=format&fit=crop&w=1235&q=20",
                    "https://images.unsplash.com/photo-1453486030486-0a5ffcd82cd9?ixlib=rb-1.2.1&auto=format&fit=crop&w=1213&q=20",
                    "https://images.unsplash.com/photo-1563630423918-b58f07336ac9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=20",
                    "https://images.unsplash.com/photo-1541612966290-b4e6d966de22?ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=20"
                ],
            "T-Shirts":
                [
                    "https://images.unsplash.com/photo-1562157873-818bc0726f68?ixlib=rb-1.2.1&auto=format&fit=crop&w=1164&q=20",
                    "https://images.unsplash.com/photo-1524275539700-cf51138f679b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=20",
                    "https://images.unsplash.com/photo-1504198458649-3128b932f49e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=20",
                    "https://images.unsplash.com/photo-1581655353564-df123a1eb820?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=20",
                    "https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=20",
                    "https://images.unsplash.com/photo-1489987707025-afc232f7ea0f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=20",
                    "https://images.unsplash.com/photo-1416339698674-4f118dd3388b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1276&q=20",
                    "https://images.unsplash.com/photo-1583743814966-8936f5b7be1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=20"
                ],
            
            "Sneekers" :
                [
                    "https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1243&q=20",
                    "https://images.unsplash.com/photo-1584735174914-6b1272458e3e?ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=20",
                    "https://images.unsplash.com/photo-1560343090-f0409e92791a?ixlib=rb-1.2.1&auto=format&fit=crop&w=1300&q=20",
                    "https://images.unsplash.com/photo-1560769629-975ec94e6a86?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1300&q=20",
                    "https://images.unsplash.com/photo-1491553895911-0055eca6402d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=20",
                    "https://images.unsplash.com/photo-1515955656352-a1fa3ffcd111?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=20",
                    "https://images.unsplash.com/photo-1512374382149-233c42b6a83b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1275&q=20",
                    "https://images.unsplash.com/photo-1584735174965-48c48d7edfde?ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=20",
                    "https://images.unsplash.com/photo-1584735175077-df669dcd8b0a?ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=20",
                    "https://images.unsplash.com/photo-1543508282-6319a3e2621f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1258&q=20"
                ],
        ]
        
        return generate(from: data)
    }
    
    
    static var women: [Product] {
        let data = [
            "Shoes": [
                "https://images.unsplash.com/photo-1519415943484-9fa1873496d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=20",
                "https://images.unsplash.com/photo-1543163521-1bf539c55dd2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=20",
                "https://images.unsplash.com/photo-1515347619252-60a4bf4fff4f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2563&q=20",
                "https://images.unsplash.com/photo-1522315109300-78ce09fe6d37?ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=20"
            ],
            "Shirts":
            [
                "https://images.unsplash.com/photo-1541101767792-f9b2b1c4f127?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1232&q=20",
                "https://images.unsplash.com/photo-1541101694594-8611136caf62?ixlib=rb-1.2.1&auto=format&fit=crop&w=1232&q=20",
                "https://images.unsplash.com/photo-1541101584841-db067cfbb494?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1232&q=20",
            ],
            "Jackets":
            [
                "https://images.unsplash.com/photo-1573497491367-887b4895f9a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=20",
                "https://images.unsplash.com/photo-1573164713350-b14a82d3c15b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=20",
                "https://images.unsplash.com/photo-1581109708418-50ffef26a08f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=20",
                "https://images.unsplash.com/photo-1581109708259-640d8f21663f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=20",
                "https://images.unsplash.com/photo-1592233548196-eca8244f470c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=20"
            ],
            "T-Shirts":
            [
                "https://images.unsplash.com/photo-1578707800776-5cd6b01c9dcf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=20",
                "https://images.unsplash.com/photo-1578789948226-ccbc6043295b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1301&q=20",
                "https://images.unsplash.com/photo-1562615992-6289cfc36f2c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=20",
                "https://images.unsplash.com/photo-1586102931834-b14a6c079331?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=20",
                "https://images.unsplash.com/photo-1586102901518-ca0f178acb5f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=20",
                "https://images.unsplash.com/photo-1586102358078-9418f6b4808f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=20"
            ]
        ]
        
        return generate(from: data)
    }
    
    static var kids: [Product] {
        let data = [
            "Shoes": [
                "https://images.unsplash.com/photo-1515349541556-ef8cc276e382?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3582&q=20",
                "https://images.unsplash.com/photo-1573309463328-ec43614b3def?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=20",
                "https://images.unsplash.com/photo-1573309463326-92397f7b730d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=20",
            ],
            "Shirts":
            [
                "https://images.unsplash.com/photo-1593052393678-d1c690c76071?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=20",
                "https://images.unsplash.com/photo-1586026799068-60f878bccfce?ixlib=rb-1.2.1&auto=format&fit=crop&w=1230&q=20",
                "https://images.unsplash.com/photo-1586026799055-8b712d724d22?ixlib=rb-1.2.1&auto=format&fit=crop&w=1241&q=20",
                "https://images.unsplash.com/photo-1585979960500-ab6b717b1d42?ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=80"
            ],
            "Jackets":
            [
                "https://images.unsplash.com/photo-1585079183432-f028a6d73c4b?ixlib=rb-1.2.1&auto=format&fit=crop&w=2550&q=20",
                "https://images.unsplash.com/photo-1591851395349-6d8c2fe76e24?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=20",

            ],
            "T-Shirts":
            [
                "https://images.unsplash.com/photo-1590815667477-ca82bcc1e775?ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=20",
                "https://images.unsplash.com/photo-1534774498201-97a162e50482?ixlib=rb-1.2.1&auto=format&fit=crop&w=1234&q=20",
                "https://images.unsplash.com/photo-1534774517378-c7c29d6ed424?ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=20",
            ]
        ]
        
        return generate(from: data)
    }
    
    static func generate(from data: [String: [String]]) -> [Product] {
        
        let keys = Array(data.keys)
        let values = Array(data.values)
        
        return(1...100).map { i -> Product in
            
            let index = Int.random(in: 0..<data.count)
            
            let price = Int.random(in: 30...200)
            
            let title = keys[index]
            let images = values[index]
            
            let mainImageIndex = Int.random(in: 0..<images.count)
            let mainImage = images[mainImageIndex]
            
            let product = Product(mainImage: mainImage, images: images, title: title, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries", price: "\(price).95 EUR", isFull: i.isMultiple(of: 5), isNew: i.isMultiple(of: 5))
            
            return product
        }
    }

}
