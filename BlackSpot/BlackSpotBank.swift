//
//  BlackSpotBank.swift
//  BlackSpot
//
//  Created by Tony Cheng on 1/9/2018.
//  Copyright © 2018 Tony Cheng. All rights reserved.
//

import Foundation

class BlackSpotBank {
    var list = [BlackSpot]()
    
    init(){
        
//        // Creating a quiz item and appending it to the list
//        let item = BlackSpot(name:"Oi Lai Street", lat: 22.333333, long: 123.222222)
//
//        // Add the Question to the list of questions
//        list.append(item)
//
//        // skipping one step and just creating the quiz item inside the append function
//        list.append(BlackSpot(name:"jkldsjf;lksadfjlksdjfs", lat: 33.322133, long: 143.242422))
//
        let item = BlackSpot(name:"ARGYLE STREET, LOMOND ROAD", lat: 22.324869, long: 114.185719)
        list.append(item)
        list.append(BlackSpot(name:"ARGYLE STREET, SAI YEE STREET", lat: 22.319686, long: 114.171643))
        list.append(BlackSpot(name:"BONHAM STRAND, HILLIER STREET, MERCER STREET", lat: 22.285775, long: 114.151867))
        list.append(BlackSpot(name:"CANTON ROAD, AUSTIN ROAD, AUSTIN ROAD WEST", lat: 22.303058, long: 114.168137))
        list.append(BlackSpot(name:"CANTON ROAD, JORDAN ROAD, FERRY STREET", lat: 22.30597, long: 114.167036))
        list.append(BlackSpot(name:"CANTON ROAD, WUI CHEUNG ROAD", lat: 22.304949, long: 114.167486))
        list.append(BlackSpot(name:"CASTLE PEAK ROAD - TSUEN WAN, TAI CHUNG ROAD", lat: 22.375082, long: 114.112046))
        list.append(BlackSpot(name:"CASTLE PEAK ROAD - YUEN LONG, LONG YAT ROAD (1) ", lat: 22.4445, long: 114.036053))
        list.append(BlackSpot(name:"CASTLE PEAK ROAD - YUEN LONG, TAI TONG ROAD, KUK TING STREET", lat: 22.444525, long: 114.029518))
        list.append(BlackSpot(name:"CHATHAM ROAD NORTH, PING CHI STREET", lat: 22.309353, long: 114.184408))
        list.append(BlackSpot(name:"CHATHAM ROAD SOUTH, AUSTIN ROAD, CHEONG WAN ROAD", lat: 22.303053, long: 114.177108))
        list.append(BlackSpot(name:"CHE KUNG MIU ROAD, MEI TIN ROAD, HUNG MUI KUK ROAD", lat: 22.369515, long: 114.179735))
        list.append(BlackSpot(name:"CHEUNG SHA WAN ROAD, TAI NAN WEST STREET", lat: 22.337801, long: 114.149348))
        list.append(BlackSpot(name:"CHEUNG SHA WAN ROAD, TONKIN STREET", lat: 22.334598, long: 114.157238))
        list.append(BlackSpot(name:"CHEUNG SHA WAN ROAD, YEN CHOW STREET", lat: 22.331825, long: 114.160974))
        list.append(BlackSpot(name:"CHUNG ON STREET, HO PUI STREET", lat: 22.368492, long: 114.115996))
        list.append(BlackSpot(name:"CONNAUGHT ROAD WEST, EASTERN STREET NORTH, EASTERN STREET", lat: 22.288581, long: 114.143802))
        list.append(BlackSpot(name:"GASCOIGNE ROAD, CHATHAM ROAD SOUTH", lat: 22.301873, long: 114.176557))
        list.append(BlackSpot(name:"GASCOIGNE ROAD, JORDAN ROAD", lat: 22.307214, long: 114.174289))
        list.append(BlackSpot(name:"HIP WO STREET, MUT WAH STREET, YUET WAH STREET", lat: 22.315374, long: 114.225866))
        list.append(BlackSpot(name:"JORDAN ROAD, LIN CHEUNG ROAD", lat: 22.306474, long: 114.164033))
        list.append(BlackSpot(name:"JORDAN ROAD, SHANGHAI STREET", lat: 22.305494, long: 114.169273))
        list.append(BlackSpot(name:"KOWLOON CITY ROAD, LOK SHAN ROAD", lat: 22.317323, long: 114.188547))
        list.append(BlackSpot(name:"KWUN TONG ROAD, LAI YIP STREET, ELEGANCE ROAD", lat: 22.315311, long: 114.21972))
        list.append(BlackSpot(name:"KWUN TONG ROAD, LEI YUE MUN ROAD, TSUI PING ROAD", lat: 22.3106008, long: 114.2287105))
        list.append(BlackSpot(name:"LEI YUE MUN ROAD, CHA KWO LING ROAD", lat: 22.310252, long: 114.229227))
        list.append(BlackSpot(name:"LEI YUE MUN ROAD, KAI TIN ROAD", lat: 22.310824, long: 114.2405358))
        list.append(BlackSpot(name:"LIN CHEUNG ROAD, TONKIN STREET WEST", lat: 22.3293744, long: 114.1519229))
        list.append(BlackSpot(name:"LOK SHAN ROAD, HA HEUNG ROAD", lat: 22.3169628, long: 114.1890134))
        list.append(BlackSpot(name:"MA HANG CHUNG ROAD, MA TAU WAI ROAD, TIN KWONG ROAD", lat: 22.3200252, long: 114.1875049))
        list.append(BlackSpot(name:"MA TAU CHUNG ROAD, SUNG WONG TOI ROAD, FU NING STREET", lat: 22.3245994, long: 114.1888304))
        list.append(BlackSpot(name:"NATHAN ROAD, ARGYLE STREET", lat: 22.3192999, long: 114.1693386))
        list.append(BlackSpot(name:"NATHAN ROAD, AUSTIN ROAD", lat: 22.3031843, long: 114.1717688))
        list.append(BlackSpot(name:"NATHAN ROAD, DUNDAS STREET", lat: 22.3031843, long: 114.1717688))
        list.append(BlackSpot(name:"NATHAN ROAD, GASCOIGNE ROAD, KANSU STREET", lat: 22.3084102, long: 114.1712903))
        list.append(BlackSpot(name:"NATHAN ROAD, KIMBERLEY ROAD", lat: 22.3004162, long: 114.172027))
        list.append(BlackSpot(name:"NATHAN ROAD, MONG KOK ROAD", lat: 22.3208241, long: 114.1689757))
        list.append(BlackSpot(name:"NATHAN ROAD, SHANTUNG STREET", lat: 22.3175109, long: 114.169705))
        list.append(BlackSpot(name:"NATHAN ROAD, WATERLOO ROAD", lat: 22.3129149, long: 114.1706015))
        list.append(BlackSpot(name:"NATHAN ROAD,CHEUNG SHA WAN ROAD,BOUNDARY STREET", lat: 22.326442, long: 114.167948))
        list.append(BlackSpot(name:"PRINCE EDWARD ROAD EAST, KING TAI STREET", lat: 22.3336368, long: 114.1978317))
        list.append(BlackSpot(name:"SHA TSUI ROAD, CHUEN LUNG STREET", lat: 22.3702268, long: 114.1158757))
        list.append(BlackSpot(name:"SHANGHAI STREET, SHANTUNG STREET", lat: 22.317292, long: 114.168507))
        list.append(BlackSpot(name:"TSUEN KAM INTERCHANGE, TEXACO ROAD NORTH", lat: 22.3663287, long: 114.1209341))
        list.append(BlackSpot(name:"TSUEN TSING INTERCHANGE, TSUEN WAN ROAD", lat: 22.354409, long: 114.122021))
        list.append(BlackSpot(name:"WATERLOO ROAD, ARGYLE STREET, PRINCESS MARGARET ROAD", lat: 22.3209438, long: 114.1771233))
        list.append(BlackSpot(name:"WATERLOO ROAD, HEREFORD ROAD", lat: 22.334085, long: 114.178975))
        list.append(BlackSpot(name:"WATERLOO ROAD, RUTLAND QUADRANT, DURHAM ROAD", lat: 22.332739, long: 114.178779))
        list.append(BlackSpot(name:"YUEN WO ROAD, FO TAN ROAD", lat: 22.3889557, long: 114.1980844))
        list.append(BlackSpot(name:"ALDRICH BAY ROAD, OI SHUN ROAD", lat: 22.2803765, long: 114.2265963))
        list.append(BlackSpot(name:"ARGYLE STREET, KADOORIE AVENUE ", lat: 22.3200939, long: 114.1740276))
        list.append(BlackSpot(name:"ARGYLE STREET, RECLAMATION STREET", lat: 22.3190429, long: 114.1676725))
        list.append(BlackSpot(name:"AUSTIN ROAD, COX'S ROAD", lat: 22.3033603, long: 114.1735659))
        list.append(BlackSpot(name:"CANTON ROAD, BUTE STREET", lat: 22.3216427, long: 114.1666313))
        list.append(BlackSpot(name:"CASTLE PEAK ROAD, FAT TSEUNG STREET", lat: 22.337841, long: 114.157113))
        list.append(BlackSpot(name:"CASTLE PEAK ROAD, KWONG CHEUNG STREET", lat: 22.3395, long: 114.151489))
        list.append(BlackSpot(name:"CHAI WAN ROAD, KAM YUEN LANE", lat: 22.2643061, long: 114.2407516))
        list.append(BlackSpot(name:"CHEUNG SHA WAN ROAD, MEI LAI ROAD", lat: 22.337493, long: 114.141027))
        list.append(BlackSpot(name:"CHOI HUNG ROAD, CHOI YEE LANE", lat: 22.3377011, long: 114.202339))
        list.append(BlackSpot(name:"CHOI HUNG ROAD, TSEUK LUK STREET, TAI SHING STREET", lat: 22.3368291, long: 114.1951013))
        list.append(BlackSpot(name:"DES VOEUX ROAD WEST, WILMER STREET", lat: 22.2877721, long: 114.1449397))
        list.append(BlackSpot(name:"HONG NING ROAD, MING CHI STREET", lat: 22.316509, long: 114.223326))
        list.append(BlackSpot(name:"HONG NING ROAD,CHUN WAH ROAD", lat: 22.3203232, long: 114.2238119))
        list.append(BlackSpot(name:"MA TAU WAI ROAD, FAT KWONG STREET, MAN YUE STREET", lat: 22.3088061, long: 114.1875554))
        list.append(BlackSpot(name:"NATHAN ROAD, HAIPHONG ROAD, HUMPHREYS AVENUE", lat: 22.2981437, long: 114.1721177))
        list.append(BlackSpot(name:"NEW CLEAR WATER BAY ROAD, FUNG SHING STREET", lat: 22.3327853, long: 114.216743))
        list.append(BlackSpot(name:"NGAU TAU KOK ROAD, HORSE SHOE LANE", lat: 22.3148415, long: 114.2224024))
        list.append(BlackSpot(name:"PO TUNG ROAD, MAN NIN STREET", lat: 22.3822235, long: 114.2709847))
        list.append(BlackSpot(name:"PORTLAND STREET, HAMILTON STREET", lat: 22.3144285, long: 114.1697165))
        list.append(BlackSpot(name:"PRINCE EDWARD ROAD WEST, FA YUEN STREET", lat: 22.3242181, long: 114.1700584))
        list.append(BlackSpot(name:"PRINCE EDWARD ROAD WEST, PENTLAND STREET", lat: 22.3267561, long: 114.1843109))
        list.append(BlackSpot(name:"SHA TIN CENTRE STREET, TAM KON PO STREET", lat: 22.3826417, long: 114.1894324))
        list.append(BlackSpot(name:"TAI PO TAI WO ROAD, ON CHEUNG ROAD, PO HEUNG STREET ", lat: 22.4511516, long: 114.1672953))
        list.append(BlackSpot(name:"TUNG LOK STREET, FOOK TAK STREET", lat: 22.4455834, long: 114.0280331))
        list.append(BlackSpot(name:"WATERLOO ROAD, WYLIE ROAD", lat: 22.3166405, long: 114.1740076))
        
    }
}
