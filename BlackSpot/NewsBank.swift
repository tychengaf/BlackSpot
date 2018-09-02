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
        list.append(NewsItem(title: "Extension of Temporary Restricted Zone on Observatory Road, Tsim Sha Tsui",link:""))
        list.append(NewsItem(title: "Temporary Restricted Zones in Pak Tin Street, Shek Kip Mei",link:""))
        list.append(NewsItem(title: "Extension of Temporary Restricted Zones on Chuen On Road, Tai Po",link:""))
        list.append(NewsItem(title: "Restricted Zone on Plover Cove Road, Tai Po",link:""))
        list.append(NewsItem(title: "Public Light Bus Restricted Zone on Yacht Street, Tin Hau",link:""))
        list.append(NewsItem(title: "Restricted Zones in Tin Hau",link:""))
        list.append(NewsItem(title: "Restricted Zone on Po Wing Road, Sheung Shui",link:""))
        list.append(NewsItem(title: "Temporary Restricted Zone in Tsuen Wah Street, Tsuen Wan",link:""))
        list.append(NewsItem(title: "Temporary Restricted Zones on Hollywood Road, Sheung Wan",link:""))
        list.append(NewsItem(title: "Rescission of Temporary Restricted Zone on Connaught Road West",link:""))
        list.append(NewsItem(title: "Temporary Restricted Zones on Lyndhurst Terrace, Central",link:""))
        list.append(NewsItem(title: " Service Enhancement of KMB Route No. 213X (On Tai (South) to Tsim Sha Tsui (Circular))",link:""))
        list.append(NewsItem(title: "Special Traffic and Transport Arrangements for 2018/2019 Horse Race Meetings in Happy",link:"")) 
    }
}
