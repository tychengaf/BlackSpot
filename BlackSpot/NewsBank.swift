//
//  NewsBank.swift
//  BlackSpot
//
//  Created by Tony Cheng on 2/9/2018.
//  Copyright © 2018 Tony Cheng. All rights reserved.
//

import Foundation

class NewsBank {
    var list = [NewsItem]()
    
    init(){
        list.append(NewsItem(title: "Temporary Traffic Arrangements for Tram Track Renewal Works in Western District", link: "http://www.td.gov.hk/en/traffic_notices/index_id_53140.html"))
        list.append(NewsItem(title: "Temporary Traffic Arrangements on North Lantau Highway",link: "http://www.td.gov.hk/en/traffic_notices/index_id_53139.html"))
        list.append(NewsItem(title: "Traffic Conversion into One-way Traffic Northbound for Hoi Kwai Road, Tsuen Wan" ,link:"http://www.td.gov.hk/en/traffic_notices/index_id_53135.html"))
        list.append(NewsItem(title: "Extension of Temporary Restricted Zones on Waterloo Road, Kowloon City",link:"http://www.td.gov.hk/en/traffic_notices/index_id_53128.html"))
        list.append(NewsItem(title: "Extension of Temporary Restricted Zones in Kwun Tong",link:"http://www.td.gov.hk/en/traffic_notices/index_id_53099.html"))
        list.append(NewsItem(title: "Extension of Temporary Restricted Zone in Fat Tseung Street, Cheung Sha Wan",link:"http://www.td.gov.hk/en/traffic_notices/index_id_53136.html"))
        list.append(NewsItem(title: "Temporary Restricted Zones in Pak Tin Street, Shek Kip Mei",link:"http://www.td.gov.hk/en/traffic_notices/index_id_53101.html"))
        // list.append(NewsItem(title: "",link:""))
    }
}
