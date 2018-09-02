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
        
        list.append(BlackSpot(name:"Argyle Street, Lomond Road", lat: 22.324869, long: 114.185719, level: 3))
        list.append(BlackSpot(name:"Argyle Street, Sai Yee Street", lat: 22.319686, long: 114.171643, level: 2))
        list.append(BlackSpot(name:"Bonham Strand, Hillier Street, Mercer Street", lat: 22.285775, long: 114.151867, level: 3))
        list.append(BlackSpot(name:"Canton Road, Austin Road, Austin Road West", lat: 22.303058, long: 114.168137, level: 2))
        list.append(BlackSpot(name:"Canton Road, Jordan Road, Ferry Street", lat: 22.30597, long: 114.167036, level: 3))
        list.append(BlackSpot(name:"Canton Road, Wui Cheung Road", lat: 22.304949, long: 114.167486, level: 3))
        list.append(BlackSpot(name:"Castle Peak Road - Tsuen Wan, Tai Chung Road", lat: 22.375082, long: 114.112046, level: 2))
        list.append(BlackSpot(name:"Castle Peak Road - Yuen Long, long: Yat Road", lat: 22.4445, long: 114.036053, level: 2))
        list.append(BlackSpot(name:"Castle Peak Road - Yuen Long, Tai Tong Road, Kuk Ting Street", lat: 22.444525, long: 114.029518, level: 2))
        list.append(BlackSpot(name:"Chatham Road North, Ping Chi Street", lat: 22.309353, long: 114.184408, level: 3))
        list.append(BlackSpot(name:"Chatham Road South, Austin Road, Cheong Wan Road", lat: 22.303053, long: 114.177108, level: 3))
        list.append(BlackSpot(name:"Che Kung Miu Road, Mei Tin Road, Hung Mui Kuk Road", lat: 22.369515, long: 114.179735, level: 2))
        list.append(BlackSpot(name:"Cheung Sha Wan Road, Tai Nan West Street", lat: 22.337801, long: 114.149348, level: 2))
        list.append(BlackSpot(name:"Cheung Sha Wan Road, Tonkin Street", lat: 22.334598, long: 114.157238, level: 2))
        list.append(BlackSpot(name:"Cheung Sha Wan Road, Yen Chow Street", lat: 22.331825, long: 114.160974, level: 2))
        list.append(BlackSpot(name:"Chung On Street, Ho Pui Street", lat: 22.368492, long: 114.115996, level: 2))
        list.append(BlackSpot(name:"Connaught Road West, Eastern Street North, Eastern Street", lat: 22.288581, long: 114.143802, level: 1))
        list.append(BlackSpot(name:"Gascoigne Road, Chatham Road South", lat: 22.301873, long: 114.176557, level: 3))
        list.append(BlackSpot(name:"Gascoigne Road, Jordan Road", lat: 22.307214, long: 114.174289, level: 3))
        list.append(BlackSpot(name:"Hip Wo Street, Mut Wah Street, Yuet Wah Street", lat: 22.315374, long: 114.225866, level: 3))
        list.append(BlackSpot(name:"Jordan Road, Lin Cheung Road", lat: 22.306474, long: 114.164033, level: 3))
        list.append(BlackSpot(name:"Jordan Road, Shanghai Street", lat: 22.305494, long: 114.169273, level: 3))
        list.append(BlackSpot(name:"Kowloon City Road, Lok Shan Road", lat: 22.317323, long: 114.188547, level: 2))
        list.append(BlackSpot(name:"Kwun Tong Road, Lai Yip Street, Elegance Road", lat: 22.315311, long: 114.21972, level: 2))
        list.append(BlackSpot(name:"Kwun Tong Road, Lei Yue Mun Road, Tsui Ping Road", lat: 22.3106008, long: 114.2287105, level: 2))
        list.append(BlackSpot(name:"Lei Yue Mun Road, Cha Kwo Ling Road", lat: 22.310252, long: 114.229227, level: 3))
        list.append(BlackSpot(name:"Lei Yue Mun Road, Kai Tin Road", lat: 22.310824, long: 114.2405358, level: 2))
        list.append(BlackSpot(name:"Lin Cheung Road, Tonkin Street West", lat: 22.3293744, long: 114.1519229, level: 2))
        list.append(BlackSpot(name:"Lok Shan Road, Ha Heung Road", lat: 22.3169628, long: 114.1890134, level: 2))
        list.append(BlackSpot(name:"Ma Hang Chung Road, Ma Tau Wai Road, Tin Kwong Road", lat: 22.3200252, long: 114.1875049, level: 1))
        list.append(BlackSpot(name:"Ma Tau Chung Road, Sung Wong Toi Road, Fu Ning Street", lat: 22.3245994, long: 114.1888304, level: 1))
        list.append(BlackSpot(name:"Nathan Road, Argyle Street", lat: 22.3192999, long: 114.1693386, level: 3))
        list.append(BlackSpot(name:"Nathan Road, Austin Road", lat: 22.3031843, long: 114.1717688, level: 3))
        list.append(BlackSpot(name:"Nathan Road, Dundas Street", lat: 22.3031843, long: 114.1717688, level: 2))
        list.append(BlackSpot(name:"Nathan Road, Gascoigne Road, Kansu Street", lat: 22.3084102, long: 114.1712903, level: 2))
        list.append(BlackSpot(name:"Nathan Road, Kimberley Road", lat: 22.3004162, long: 114.172027, level: 2))
        list.append(BlackSpot(name:"Nathan Road, Mong Kok Road", lat: 22.3208241, long: 114.1689757, level: 3))
        list.append(BlackSpot(name:"Nathan Road, Shantung Street", lat: 22.3175109, long: 114.169705, level: 3))
        list.append(BlackSpot(name:"Nathan Road, Waterloo Road", lat: 22.3129149, long: 114.1706015, level: 2))
        list.append(BlackSpot(name:"Nathan Road,Cheung Sha Wan Road,Boundary Street", lat: 22.326442, long: 114.167948, level: 1))
        list.append(BlackSpot(name:"Prince Edward Road East, King Tai Street", lat: 22.3336368, long: 114.1978317, level: 2))
        list.append(BlackSpot(name:"Sha Tsui Road, Chuen Lung Street", lat: 22.3702268, long: 114.1158757, level: 2))
        list.append(BlackSpot(name:"Shanghai Street, Shantung Street", lat: 22.317292, long: 114.168507, level: 3))
        list.append(BlackSpot(name:"Tsuen Kam Interchange, Texaco Road North", lat: 22.3663287, long: 114.1209341, level: 2))
        list.append(BlackSpot(name:"Tsuen Tsing Interchange, Tsuen Wan Road", lat: 22.354409, long: 114.122021, level: 2))
        list.append(BlackSpot(name:"Waterloo Road, Argyle Street, Princess Margaret Road", lat: 22.3209438, long: 114.1771233, level: 2))
        list.append(BlackSpot(name:"Waterloo Road, Hereford Road", lat: 22.334085, long: 114.178975, level: 3))
        list.append(BlackSpot(name:"Waterloo Road, Rutland Quadrant, Durham Road", lat: 22.332739, long: 114.178779, level: 2))
        list.append(BlackSpot(name:"Yuen Wo Road, Fo Tan Road", lat: 22.3889557, long: 114.1980844, level: 2))
        list.append(BlackSpot(name:"Aldrich Bay Road, Oi Shun Road", lat: 22.2803765, long: 114.2265963, level: 2))
        list.append(BlackSpot(name:"Argyle Street, Kadoorie Avenue ", lat: 22.3200939, long: 114.1740276, level: 3))
        list.append(BlackSpot(name:"Argyle Street, Reclamation Street", lat: 22.3190429, long: 114.1676725, level: 3))
        list.append(BlackSpot(name:"Austin Road, Cox's Road", lat: 22.3033603, long: 114.1735659, level: 2))
        list.append(BlackSpot(name:"Canton Road, Bute Street", lat: 22.3216427, long: 114.1666313, level: 2))
        list.append(BlackSpot(name:"Castle Peak Road, Fat Tseung Street", lat: 22.337841, long: 114.157113, level: 2))
        list.append(BlackSpot(name:"Castle Peak Road, Kwong Cheung Street", lat: 22.3395, long: 114.151489, level: 2))
        list.append(BlackSpot(name:"Chai Wan Road, Kam Yuen Lane", lat: 22.2643061, long: 114.2407516, level: 2))
        list.append(BlackSpot(name:"Cheung Sha Wan Road, Mei Lai Road", lat: 22.337493, long: 114.141027, level: 3))
        list.append(BlackSpot(name:"Choi Hung Road, Choi Yee Lane", lat: 22.3377011, long: 114.202339, level: 1))
        list.append(BlackSpot(name:"Choi Hung Road, Tseuk Luk Street, Tai Shing Street", lat: 22.3368291, long: 114.1951013, level: 1))
        list.append(BlackSpot(name:"Des Voeux Road West, Wilmer Street", lat: 22.2877721, long: 114.1449397, level: 2))
        list.append(BlackSpot(name:"Hong Ning Road, Ming Chi Street", lat: 22.316509, long: 114.223326, level: 2))
        list.append(BlackSpot(name:"Hong Ning Road,Chun Wah Road", lat: 22.3203232, long: 114.2238119, level: 2))
        list.append(BlackSpot(name:"Ma Tau Wai Road, Fat Kwong Street, Man Yue Street", lat: 22.3088061, long: 114.1875554, level: 2))
        list.append(BlackSpot(name:"Nathan Road, Haiphong Road, Humphreys Avenue", lat: 22.2981437, long: 114.1721177, level: 3))
        list.append(BlackSpot(name:"New Clear Water Bay Road, Fung Shing Street", lat: 22.3327853, long: 114.216743, level: 2))
        list.append(BlackSpot(name:"Ngau Tau Kok Road, Horse Shoe Lane", lat: 22.3148415, long: 114.2224024, level: 2))
        list.append(BlackSpot(name:"Po Tung Road, Man Nin Street", lat: 22.3822235, long: 114.2709847, level: 1))
        list.append(BlackSpot(name:"Portland Street, Hamilton Street", lat: 22.3144285, long: 114.1697165, level: 2))
        list.append(BlackSpot(name:"Prince Edward Road West, Fa Yuen Street", lat: 22.3242181, long: 114.1700584, level: 3))
        list.append(BlackSpot(name:"Prince Edward Road West, Pentland Street", lat: 22.3267561, long: 114.1843109, level: 2))
        list.append(BlackSpot(name:"Sha Tin Centre Street, Tam Kon Po Street", lat: 22.3826417, long: 114.1894324, level: 2))
        list.append(BlackSpot(name:"Tai Po Tai Wo Road, On Cheung Road, Po Heung Street ", lat: 22.4511516, long: 114.1672953, level: 2))
        list.append(BlackSpot(name:"Tung Lok Street, Fook Tak Street", lat: 22.4455834, long: 114.0280331, level: 3))
        list.append(BlackSpot(name:"Waterloo Road, Wylie Road", lat: 22.3166405, long: 114.1740076, level: 1))


        
    }
    func presentDangerousLevel(level:Int)->String{
        switch(level){
        case 1:
            return "Risk Level: ⚠️"
        case 2:
            return "Risk Level: ⚠️⚠️"
        case 3:
            return "Risk Level: ⚠️⚠️⚠️"
        default:
            return "Not Dangerous wuttt!?"
            
        }
        
    }
}
