//
//  Product.swift
//  ECommerceApp
//
//  Created by Navnit Baldha on 19/12/23.
//

import Foundation

struct Product: Identifiable {
    var id: String
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Int
}

enum Supplier: String, CaseIterable {
    case Ikea = "Ikea"
    case HomeDepo = "Home Depo"
    case OutdoorCouch = "Outdoor couch"
}

var productList = [

    Product(id: UUID().uuidString,
            name: "Leather Couch",
            image: "fn1",
            description: "Furniture, household equipment, usually made of wood, metal, plastics, marble, glass, fabrics, or related materials and having a variety of different purposes. Furniture ranges widely from the simple pine chest or stick-back country chair to the most elaborate marquetry work cabinet or gilded console table. The functional and decorative aspects of furniture have been emphasized more or less throughout history according to economics and fashion. Chairs are always for sitting in, but some are more comfortable or highly ornamented than others. Accessory furnishings are smaller subsidiary items such as clocks, mirrors, tapestries, fireplaces, panelling, and other items complementary to an interior scheme.",
            supplier: Supplier.Ikea.rawValue,
            price: 400),

    Product(id: UUID().uuidString,
            name: "Leather Couch 1",
            image: "fn2",
            description: "Furniture, household equipment, usually made of wood, metal, plastics, marble, glass, fabrics, or related materials and having a variety of different purposes. Furniture ranges widely from the simple pine chest or stick-back country chair to the most elaborate marquetry work cabinet or gilded console table. The functional and decorative aspects of furniture have been emphasized more or less throughout history according to economics and fashion. Chairs are always for sitting in, but some are more comfortable or highly ornamented than others. Accessory furnishings are smaller subsidiary items such as clocks, mirrors, tapestries, fireplaces, panelling, and other items complementary to an interior scheme.",
            supplier: Supplier.HomeDepo.rawValue,
            price: 600),

    Product(id: UUID().uuidString,
            name: "Leather Couch 2",
            image: "fn3",
            description: "Furniture, household equipment, usually made of wood, metal, plastics, marble, glass, fabrics, or related materials and having a variety of different purposes. Furniture ranges widely from the simple pine chest or stick-back country chair to the most elaborate marquetry work cabinet or gilded console table. The functional and decorative aspects of furniture have been emphasized more or less throughout history according to economics and fashion. Chairs are always for sitting in, but some are more comfortable or highly ornamented than others. Accessory furnishings are smaller subsidiary items such as clocks, mirrors, tapestries, fireplaces, panelling, and other items complementary to an interior scheme.",
            supplier: Supplier.OutdoorCouch.rawValue,
            price: 800),

    Product(id: UUID().uuidString,
            name: "Leather Couch 3",
            image: "fn4",
            description: "Furniture, household equipment, usually made of wood, metal, plastics, marble, glass, fabrics, or related materials and having a variety of different purposes. Furniture ranges widely from the simple pine chest or stick-back country chair to the most elaborate marquetry work cabinet or gilded console table. The functional and decorative aspects of furniture have been emphasized more or less throughout history according to economics and fashion. Chairs are always for sitting in, but some are more comfortable or highly ornamented than others. Accessory furnishings are smaller subsidiary items such as clocks, mirrors, tapestries, fireplaces, panelling, and other items complementary to an interior scheme.",
            supplier: Supplier.Ikea.rawValue,
            price: 1000),

    Product(id: UUID().uuidString,
            name: "Leather Couch 4",
            image: "fn5",
            description: "Furniture, household equipment, usually made of wood, metal, plastics, marble, glass, fabrics, or related materials and having a variety of different purposes. Furniture ranges widely from the simple pine chest or stick-back country chair to the most elaborate marquetry work cabinet or gilded console table. The functional and decorative aspects of furniture have been emphasized more or less throughout history according to economics and fashion. Chairs are always for sitting in, but some are more comfortable or highly ornamented than others. Accessory furnishings are smaller subsidiary items such as clocks, mirrors, tapestries, fireplaces, panelling, and other items complementary to an interior scheme.",
            supplier: Supplier.HomeDepo.rawValue,
            price: 1200),

    Product(id: UUID().uuidString,
            name: "Leather Couch 5",
            image: "fn3",
            description: "Furniture, household equipment, usually made of wood, metal, plastics, marble, glass, fabrics, or related materials and having a variety of different purposes. Furniture ranges widely from the simple pine chest or stick-back country chair to the most elaborate marquetry work cabinet or gilded console table. The functional and decorative aspects of furniture have been emphasized more or less throughout history according to economics and fashion. Chairs are always for sitting in, but some are more comfortable or highly ornamented than others. Accessory furnishings are smaller subsidiary items such as clocks, mirrors, tapestries, fireplaces, panelling, and other items complementary to an interior scheme.",
            supplier: Supplier.OutdoorCouch.rawValue,
            price: 1400)
]
